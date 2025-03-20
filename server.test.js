const server = require("./server");
const request = require("supertest");

it("Should return 200 and hellow world", async () => {
    const res = await request(server).get("/");
    expect(res.statusCode).toBe(200);
    expect(res.body).toEqual({ message: "Hello, world!" });
});

