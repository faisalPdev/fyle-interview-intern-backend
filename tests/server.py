def test_server_status(client):
    response = client.get(
        '/',
    )

    assert response.status_code == 200

    data = response.json
    assert data['status'] == 'ready'