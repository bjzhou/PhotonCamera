.class final Lfie;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field final synthetic a:Lkxy;

.field final synthetic b:Lfif;


# direct methods
.method public constructor <init>(Lfif;Lkxy;)V
    .locals 0

    iput-object p1, p0, Lfie;->b:Lfif;

    iput-object p2, p0, Lfie;->a:Lkxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 1

    iget-object v0, p0, Lfie;->a:Lkxy;

    invoke-interface {v0, p1}, Lkxy;->a(Lnou;)V

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lfie;->a:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lfie;->b:Lfif;

    iget-object p1, p1, Lfif;->a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    sget-object p2, Lffp;->a:Lnak;

    invoke-interface {p1}, Lgxl;->U()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfie;->a:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    return-void
.end method
