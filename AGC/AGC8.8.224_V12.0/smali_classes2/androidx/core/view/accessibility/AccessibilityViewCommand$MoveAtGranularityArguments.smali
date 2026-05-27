.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveAtGranularityArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendSelection()Z
    .locals 1

    .line 88
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getGranularity()I
    .locals 1

    .line 80
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
