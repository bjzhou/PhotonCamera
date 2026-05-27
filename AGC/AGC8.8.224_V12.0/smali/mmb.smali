.class public final Lmmb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Llyd;[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ldwh;

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Ldwh;-><init>(Llyd;I[B)V

    iput-object v3, p0, Lmmb;->b:Loiw;

    new-instance p1, Llwe;

    const/16 p2, 0x11

    invoke-direct {p1, v3, p2}, Llwe;-><init>(Loiw;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lmmb;->c:Loiw;

    new-instance p2, Llit;

    const/16 v0, 0xc

    invoke-direct {p2, v3, p1, v0}, Llit;-><init>(Loiw;Loiw;I)V

    invoke-static {p2}, Logj;->b(Loiw;)Loiw;

    move-result-object v1

    iput-object v1, p0, Lmmb;->d:Loiw;

    new-instance p1, Llwe;

    const/16 p2, 0xf

    invoke-direct {p1, v3, p2}, Llwe;-><init>(Loiw;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, p0, Lmmb;->e:Loiw;

    new-instance p1, Llwf;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Llwf;-><init>(Loiw;Loiw;Loiw;I[S)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lmmb;->f:Loiw;

    new-instance p2, Llwe;

    const/16 v0, 0x10

    invoke-direct {p2, p1, v0}, Llwe;-><init>(Loiw;I)V

    invoke-static {p2}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lmmb;->a:Loiw;

    return-void
.end method
