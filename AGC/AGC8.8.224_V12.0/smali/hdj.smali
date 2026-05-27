.class public final Lhdj;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;)V
    .locals 0

    iput-object p1, p0, Lhdj;->a:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lhdj;->a:Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/smarts/SmartsUiGleamingView;->a()V

    return-void
.end method
