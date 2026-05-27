.class public final Lmaq;
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

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmaq;->a:Loiw;

    iput-object p2, p0, Lmaq;->b:Loiw;

    iput-object p3, p0, Lmaq;->c:Loiw;

    iput-object p4, p0, Lmaq;->d:Loiw;

    iput-object p5, p0, Lmaq;->e:Loiw;

    iput-object p6, p0, Lmaq;->f:Loiw;

    iput-object p7, p0, Lmaq;->g:Loiw;

    iput-object p8, p0, Lmaq;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmap;
    .locals 10

    iget-object v1, p0, Lmaq;->a:Loiw;

    iget-object v2, p0, Lmaq;->b:Loiw;

    iget-object v3, p0, Lmaq;->c:Loiw;

    iget-object v4, p0, Lmaq;->d:Loiw;

    iget-object v5, p0, Lmaq;->e:Loiw;

    iget-object v6, p0, Lmaq;->f:Loiw;

    iget-object v7, p0, Lmaq;->g:Loiw;

    iget-object v8, p0, Lmaq;->h:Loiw;

    new-instance v9, Lmap;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lmap;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaq;->a()Lmap;

    move-result-object v0

    return-object v0
.end method
