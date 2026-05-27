.class public final Lkcd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcd;->a:Loiw;

    iput-object p2, p0, Lkcd;->b:Loiw;

    iput-object p3, p0, Lkcd;->c:Loiw;

    iput-object p4, p0, Lkcd;->d:Loiw;

    iput-object p5, p0, Lkcd;->e:Loiw;

    iput-object p6, p0, Lkcd;->f:Loiw;

    iput-object p7, p0, Lkcd;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkpo;
    .locals 9

    iget-object v1, p0, Lkcd;->a:Loiw;

    iget-object v2, p0, Lkcd;->b:Loiw;

    iget-object v3, p0, Lkcd;->c:Loiw;

    iget-object v4, p0, Lkcd;->d:Loiw;

    iget-object v5, p0, Lkcd;->e:Loiw;

    iget-object v6, p0, Lkcd;->f:Loiw;

    new-instance v8, Lkpo;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lkpo;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B)V

    return-object v8
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkcd;->a()Lkpo;

    move-result-object v0

    return-object v0
.end method
