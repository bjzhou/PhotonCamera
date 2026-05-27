.class Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api15Impl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 0

    .line 805
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result p0

    return p0
.end method

.method static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .locals 0

    .line 815
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result p0

    return p0
.end method

.method static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0

    .line 810
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    return-void
.end method

.method static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0

    .line 820
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    return-void
.end method
