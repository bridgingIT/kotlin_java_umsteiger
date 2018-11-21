package de.bridgingit.entwicklertag.kotlindemo

import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam

@Controller
class ShowController {

    @RequestMapping("/show")
    fun show(@RequestParam(value = "slide", defaultValue = "1") slideNumber: String, model: Model): String {
        if ("0" == slideNumber) {
            return "redirect:/index.html"
        }
        model.addAttribute("slide", slideNumber)
        model.addAttribute("nextSlide", slideNumber.toInt() + 1)
        model.addAttribute("previousSlide", slideNumber.toInt() - 1)
        return "show"
    }

}