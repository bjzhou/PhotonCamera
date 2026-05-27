.class public final Landroidx/core/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;
    }
.end annotation


# instance fields
.field private final mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;


# direct methods
.method private constructor <init>(Landroid/view/DragAndDropPermissions;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 56
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;->requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    new-instance p1, Landroidx/core/view/DragAndDropPermissionsCompat;

    invoke-direct {p1, p0}, Landroidx/core/view/DragAndDropPermissionsCompat;-><init>(Landroid/view/DragAndDropPermissions;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 69
    iget-object p0, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    invoke-static {p0}, Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;->release(Landroid/view/DragAndDropPermissions;)V

    :cond_0
    return-void
.end method
