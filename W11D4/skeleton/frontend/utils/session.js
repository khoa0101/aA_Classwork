import { $CombinedState } from "redux"

export const postUser = user => {
  $.ajax({
    url: '/api/users',
    method: 'POST',
    data: { user },
  })
};

export const postSession = user => {
  $.ajax({
    url: '/api/session',
    method: 'POST',
    data: { user },
  })
};

export const deleteSession = () => {
  $.ajax({
    url: '/ajax/session',
    method: 'DELETE',
  })
};