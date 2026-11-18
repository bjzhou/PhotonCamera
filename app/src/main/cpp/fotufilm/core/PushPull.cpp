// Port of Sources/FotufilmCore/PushPull.swift.
#include "PushPull.h"

#include <algorithm>
#include <cmath>
#include <cstdio>

#include "FilmStock.h"

namespace fotufilm {

std::string FilmDevelopmentError::stops(float value) {
    char number[64];
    std::snprintf(number, sizeof number, value == std::round(value) ? "%.0f" : "%.2f", static_cast<double>(value));
    return std::string(value > 0 ? "+" : "") + number + " stop" + (std::fabs(value) == 1 ? "" : "s");
}

FilmDevelopmentError FilmDevelopmentError::unavailable(const std::string& stock, float requested) {
    return FilmDevelopmentError(Kind::unavailable,
                                stock + " has no push/pull conditions; cannot apply " + stops(requested));
}

FilmDevelopmentError FilmDevelopmentError::unlistedCondition(const std::string& stock, float requested,
                                                             const std::vector<float>& available) {
    std::string choices;
    for (size_t i = 0; i < available.size(); ++i) {
        if (i > 0) choices += ", ";
        choices += stops(available[i]);
    }
    return FilmDevelopmentError(Kind::unlistedCondition,
                                stock + " has no condition at " + stops(requested) + "; available: " + choices);
}

FilmDevelopmentError FilmDevelopmentError::invalidProfile(const std::string& stock, const std::string& condition,
                                                          const std::string& reason) {
    return FilmDevelopmentError(Kind::invalidProfile,
                                stock + " has an invalid development condition '" + condition + "': " + reason);
}

std::vector<float> FilmStock::supportedDevelopmentStops() const {
    std::vector<float> out;
    if (!developmentProfile) return out;
    for (const auto& condition : developmentProfile->conditions) out.push_back(condition.stops);
    std::stable_sort(out.begin(), out.end());
    return out;
}

bool FilmStock::hasDevelopmentConditions() const { return !supportedDevelopmentStops().empty(); }

std::optional<float> FilmStock::matchingDevelopmentStop(float stops) const {
    if (stops == 0) return 0.0f;
    if (const auto* condition = developmentCondition(stops)) return condition->stops;
    return std::nullopt;
}

bool FilmStock::supportsDevelopment(float stops) const {
    return matchingDevelopmentStop(stops).has_value();
}

FilmStock FilmStock::pushed(float stops) const {
    if (stops == 0) return *this;
    if (!developmentProfile) throw FilmDevelopmentError::unavailable(name, stops);
    const FilmDevelopmentCondition* condition = developmentCondition(stops);
    if (condition == nullptr) {
        std::vector<float> available;
        for (const auto& c : developmentProfile->conditions) available.push_back(c.stops);
        std::stable_sort(available.begin(), available.end());
        throw FilmDevelopmentError::unlistedCondition(name, stops, available);
    }
    if (condition->curves.size() != curves.size()) {
        throw FilmDevelopmentError::invalidProfile(
            name, condition->label,
            std::to_string(condition->curves.size()) + " layer curves; expected " + std::to_string(curves.size()));
    }
    if (condition->donorCurves.size() != donorLayers.size()) {
        throw FilmDevelopmentError::invalidProfile(name, condition->label,
                                                   std::to_string(condition->donorCurves.size()) +
                                                       " donor curves; expected " +
                                                       std::to_string(donorLayers.size()));
    }

    FilmStock developed = *this;
    developed.curves = condition->curves;
    for (size_t index = 0; index < developed.donorLayers.size(); ++index) {
        developed.donorLayers[index].curve = condition->donorCurves[index];
    }
    if (condition->grainStrength) developed.grainStrength = *condition->grainStrength;
    if (condition->grainSizeMM) developed.grainSizeMM = *condition->grainSizeMM;
    if (condition->grainLayerWeights) developed.grainLayerWeights = *condition->grainLayerWeights;
    if (condition->grainFogDensity) developed.grainFogDensity = *condition->grainFogDensity;
    if (condition->adjacencyStrength) developed.adjacencyStrength = *condition->adjacencyStrength;
    return developed;
}

const FilmDevelopmentCondition* FilmStock::developmentCondition(float stops) const {
    const float tolerance = 1e-4f;
    if (!developmentProfile) return nullptr;
    for (const auto& condition : developmentProfile->conditions) {
        if (std::fabs(condition.stops - stops) <= tolerance) return &condition;
    }
    return nullptr;
}

}  // namespace fotufilm
