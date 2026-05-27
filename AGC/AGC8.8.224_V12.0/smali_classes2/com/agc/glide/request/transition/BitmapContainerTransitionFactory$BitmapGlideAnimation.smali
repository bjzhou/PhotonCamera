.class final Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapGlideAnimation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;

.field private final transition:Lcom/agc/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;Lcom/agc/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;->this$0:Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;->transition:Lcom/agc/glide/request/transition/Transition;

    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/agc/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/agc/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;->this$0:Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;

    invoke-virtual {v2, p1}, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;->transition:Lcom/agc/glide/request/transition/Transition;

    invoke-interface {p1, v1, p2}, Lcom/agc/glide/request/transition/Transition;->transition(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition$ViewAdapter;)Z

    move-result p1

    return p1
.end method
