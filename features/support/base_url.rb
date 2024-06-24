module Users 
    include HTTParty
    base_uri 'http://localhost:3000/'
    format :json
    headers 'Content-Type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImRhcm9uLnN0cmFja2VAZXhhbXBsZS5jb20iLCJwYXNzd29yZCI6InVRYXBabnVXOEFOd0tWViIsImlhdCI6MTcxOTI1NDE5MywiZXhwIjoxNzE5MjU0NzkzfQ.Z4M9y7fQvAVaFPqqzWQsnom-vIJU6wqHgP88Mwc5X2M' 
end

