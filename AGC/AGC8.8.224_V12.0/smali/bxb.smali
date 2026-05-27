.class final Lbxb;
.super Ljava/lang/Object;

# interfaces
.implements Lbwo;


# instance fields
.field private final a:Lbxa;

.field private final b:Lcam;


# direct methods
.method public constructor <init>(Lbxa;Lcam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxb;->a:Lbxa;

    iput-object p2, p0, Lbxb;->b:Lcam;

    return-void
.end method


# virtual methods
.method public final a(Lbsw;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lbxb;->b:Lcam;

    iget-object v0, v0, Lcam;->c:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lbsw;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbxb;->a:Lbxa;

    invoke-virtual {v0}, Lbxa;->a()V

    return-void
.end method
