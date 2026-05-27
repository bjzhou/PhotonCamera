.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetSelectionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 127
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getStart()I
    .locals 1

    .line 120
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
