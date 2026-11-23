import React from 'react';

function ComboBox(props) {
    const options = props.options;
    return <>
        <select className='form-select' name={props.name} required={props.require} value={props.value} onChange={props.onChange}>
        {
            !!props.selecionar ? <option key='0' value={props.selecionar}>{props.selecionar}</option> : ''
        }
        {
            options.map(option => {
                 return <option key={option.value} value={option.value}>{option.label}</option>
            })           
        }
        </select>
    </>
}

export default ComboBox;