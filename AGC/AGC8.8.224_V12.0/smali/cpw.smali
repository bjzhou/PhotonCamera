.class public final Lcpw;
.super Ljava/lang/Object;

# interfaces
.implements Lcqt;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

.field private final b:Ljuh;


# direct methods
.method public constructor <init>(Lihg;Ljuh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcpw;->b:Ljuh;

    new-instance v0, Lcfz;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, v1}, Lcfz;-><init>(Lcpw;Lihg;I)V

    invoke-virtual {p2, v0}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcpw;->b:Ljuh;

    new-instance v1, Lclr;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcpw;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcpw;->b:Ljuh;

    new-instance v1, Lcfz;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lcfz;-><init>(Lcpw;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method
