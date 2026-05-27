.class Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;
.super Ljava/lang/Object;
.source "DrawableContainerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;)V
    .locals 0

    .line 466
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 469
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->animate(Z)V

    .line 470
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$1;->this$0:Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->invalidateSelf()V

    return-void
.end method
