import * as React from "react"

import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectTrigger,
  SelectValue,
} from "../components/ui/select"

export default function SelectDemo() {
  return (
    <Select>
      <SelectTrigger className="w-[180px]">
        <SelectValue placeholder="Select a fruit" />
      </SelectTrigger>
      <SelectContent>
        <SelectGroup>
          <SelectLabel>Fruits</SelectLabel>
          <SelectItem value="apple">Apple</SelectItem>
          <SelectItem value="banana">Banana</SelectItem>
          <SelectItem value="orange">Orange</SelectItem>
          <SelectItem value="watermelon">Watermelon</SelectItem>
          <SelectItem value="watermelon_0">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer</SelectItem>
          <SelectItem value="watermelon_1">LoremIpsumhasbeentheindustrysstandarddummytexteversincethe1500swhenanunknownprinter</SelectItem>
          <SelectItem value="watermelon_2">Watermelon_2</SelectItem>
          <SelectItem value="watermelon_3">Watermelon_3</SelectItem>
          <SelectItem value="watermelon_4">Watermelon_4</SelectItem>
          <SelectItem value="watermelon_5">Watermelon_5</SelectItem>
          <SelectItem value="watermelon_6">Watermelon_6</SelectItem>
          <SelectItem value="watermelon_7">Watermelon_7</SelectItem>
          <SelectItem value="watermelon_8">Watermelon_8</SelectItem>
          <SelectItem value="watermelon_9">Watermelon_9</SelectItem>
        </SelectGroup>
      </SelectContent>
    </Select>
  )
}
