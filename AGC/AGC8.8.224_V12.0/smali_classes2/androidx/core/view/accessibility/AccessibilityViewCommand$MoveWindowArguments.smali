.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveWindowArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .line 191
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getY()I
    .locals 1

    .line 198
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
