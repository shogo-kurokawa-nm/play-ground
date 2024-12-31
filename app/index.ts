import { Hono } from 'hono'
import { serve } from '@hono/node-server'

const port = 3000

const app = new Hono()

app.get('/', (c) => c.text('Hello, kuro!'))

serve({
    fetch: app.fetch,
    port,
});

console.log(`Server is running at http://localhost:${port}`)