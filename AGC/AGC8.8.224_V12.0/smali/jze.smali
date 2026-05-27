.class final Ljze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic a:Ljzf;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljzf;)V
    .locals 0

    iput-object p1, p0, Ljze;->a:Ljzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x321

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    iget-boolean p1, p0, Ljze;->c:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Ljze;->c:Z

    iget-object p1, p0, Ljze;->a:Ljzf;

    iget-object p1, p1, Ljzf;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljxy;->g()V

    return-void

    :cond_0
    const/16 p1, 0x320

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Ljze;->b:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Ljze;->b:Z

    iget-object p1, p0, Ljze;->a:Ljzf;

    iget-object p1, p1, Ljzf;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljxy;->e()V

    return-void

    :cond_1
    const/16 p1, 0x322

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Ljze;->a:Ljzf;

    iget-object p1, p1, Ljzf;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljxy;->f()V

    return-void

    :cond_2
    const/16 p1, 0x323

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Ljze;->a:Ljzf;

    iget-object p1, p1, Ljzf;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljxy;->h()V

    return-void

    :cond_3
    return-void
.end method
