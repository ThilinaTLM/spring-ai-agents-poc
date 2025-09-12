'use client'

import { AxiosInstance } from 'axios'
import type { UserDto } from '../types/user'

const chatsApi = (axios: () => Promise<AxiosInstance>) => ({
  getById: async (userId: string) => {
    const client = await axios()
    const response = await client.get<UserDto>(`/api/v1/users/${userId}`)
    return response.data
  },
  getCurrentUser: async () => {
    const client = await axios()
    const response = await client.get<UserDto>('/api/v1/users/me')
    return response.data
  },
})

export default chatsApi
