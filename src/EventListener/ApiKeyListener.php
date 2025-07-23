<?php

namespace App\EventListener;

use Symfony\Component\HttpKernel\Event\RequestEvent;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use Symfony\Component\EventDispatcher\Attribute\AsEventListener;

#[AsEventListener(event: 'kernel.request', method: 'onKernelRequest')]
class ApiKeyListener
{
    private string $apiKey;

    public function __construct(string $apiKey)
    {
        $this->apiKey = $apiKey;
    }

    public function onKernelRequest(RequestEvent $event): void
    {
        $request = $event->getRequest();
        $path = $request->getPathInfo();

        if ($path === '/api') {
            return;
        }
        if ($path === '/api/') {
            return;
        }
        if (!str_starts_with($path, '/api/')) {
            return;
        }

        $key = $request->headers->get('X-API-KEY');


        if ($key !== $this->apiKey) {
            throw new AccessDeniedHttpException('Clave API inválida.');
        }
    }
}
