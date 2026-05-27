.class public final Lkic;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkte;

.field public final b:Lkte;

.field public final c:Lkte;

.field public final d:Lkte;

.field public final e:Lkte;

.field public final f:Lkte;

.field public final g:Lkte;

.field public final h:Lkte;

.field public final i:Lkte;

.field public final j:Lkte;

.field final synthetic k:Lloi;


# direct methods
.method public constructor <init>(Lloi;[B[B[B[B)V
    .locals 7

    iput-object p1, p0, Lkic;->k:Lloi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    const/4 p3, 0x1

    new-array p4, p3, [Lknh;

    const-string p5, "camera_id"

    invoke-static {p5}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    check-cast p2, Lknq;

    const-string v0, "/pck/frameserver/frameserver_count"

    invoke-virtual {p2, v0, p4}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->a:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array p4, p3, [Lknh;

    invoke-static {p5}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v0

    aput-object v0, p4, v1

    check-cast p2, Lknq;

    const-string v0, "/pck/frameserver/frameserver_open_durations_ns"

    invoke-virtual {p2, v0, p4}, Lknq;->c(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->b:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    const/4 p4, 0x3

    new-array v0, p4, [Lknh;

    invoke-static {p5}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "stream_count"

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v2

    aput-object v2, v0, p3

    const-string v2, "parameter_count"

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    check-cast p2, Lknq;

    const-string v2, "/pck/frameserver/frame_stream_count"

    invoke-virtual {p2, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->c:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array v0, v1, [Lknh;

    check-cast p2, Lknq;

    const-string v2, "/pck/frameserver/framebuffer_acquire_count"

    invoke-virtual {p2, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->d:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array v0, v1, [Lknh;

    check-cast p2, Lknq;

    const-string v2, "/pck/frameserver/framebuffer_release_count"

    invoke-virtual {p2, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->e:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array v0, v3, [Lknh;

    const-string v2, "burst_size"

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v2

    aput-object v2, v0, v1

    const-class v2, Ljava/lang/Boolean;

    new-instance v4, Lknh;

    const-string v5, "repeating"

    invoke-direct {v4, v5, v2}, Lknh;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v0, p3

    check-cast p2, Lknq;

    const-string v2, "/pck/frameserver/request_submit_count"

    invoke-virtual {p2, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->f:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array v0, v1, [Lknh;

    check-cast p2, Lknq;

    const-string v2, "/pck/frameserver/request_abort"

    invoke-virtual {p2, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->g:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Lknh;

    invoke-static {p5}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object p5

    aput-object p5, v0, v1

    const-string p5, "type"

    invoke-static {p5}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object p5

    aput-object p5, v0, p3

    const-string p5, "format"

    invoke-static {p5}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "width"

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v4

    aput-object v4, v0, p4

    const-string v4, "height"

    invoke-static {v4}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-string v5, "capacity"

    invoke-static {v5}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    check-cast p2, Lknq;

    const-string v5, "/pck/frameserver/stream_count"

    invoke-virtual {p2, v5, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->h:Lkte;

    iget-object p2, p1, Lloi;->b:Ljava/lang/Object;

    new-array v0, p4, [Lknh;

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v5

    aput-object v5, v0, p3

    invoke-static {p5}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object v5

    aput-object v5, v0, v3

    check-cast p2, Lknq;

    const-string v5, "/pck/frameserver/image_acquire_count"

    invoke-virtual {p2, v5, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p2

    iput-object p2, p0, Lkic;->i:Lkte;

    iget-object p1, p1, Lloi;->b:Ljava/lang/Object;

    new-array p2, p4, [Lknh;

    invoke-static {v2}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object p4

    aput-object p4, p2, v1

    invoke-static {v4}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-static {p5}, Lknh;->a(Ljava/lang/String;)Lknh;

    move-result-object p3

    aput-object p3, p2, v3

    check-cast p1, Lknq;

    const-string p3, "/pck/frameserver/image_release_count"

    invoke-virtual {p1, p3, p2}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p1

    iput-object p1, p0, Lkic;->j:Lkte;

    return-void
.end method
