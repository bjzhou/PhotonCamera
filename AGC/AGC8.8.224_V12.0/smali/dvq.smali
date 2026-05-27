.class final Ldvq;
.super Landroid/app/SharedElementCallback;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Ldvq;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 0

    iget-object p1, p0, Ldvq;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method
