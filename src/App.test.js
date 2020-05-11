/*import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(/enzyme-grr/i);
  expect(linkElement).toBeInTheDocument();
});
*/

import React from 'react';
import { shallow } from 'enzyme';
import App from './App';
it('renders without crashing', () => {
  shallow(<App />);
});