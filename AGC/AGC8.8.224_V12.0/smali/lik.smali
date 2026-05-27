.class public final Llik;
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

    iput-object p1, p0, Llik;->a:Loiw;

    iput-object p2, p0, Llik;->b:Loiw;

    iput-object p3, p0, Llik;->c:Loiw;

    iput-object p4, p0, Llik;->d:Loiw;

    iput-object p5, p0, Llik;->e:Loiw;

    iput-object p6, p0, Llik;->f:Loiw;

    iput-object p7, p0, Llik;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llij;
    .locals 9

    iget-object v1, p0, Llik;->a:Loiw;

    iget-object v2, p0, Llik;->b:Loiw;

    iget-object v3, p0, Llik;->c:Loiw;

    iget-object v4, p0, Llik;->d:Loiw;

    iget-object v5, p0, Llik;->e:Loiw;

    iget-object v6, p0, Llik;->f:Loiw;

    iget-object v7, p0, Llik;->g:Loiw;

    new-instance v8, Llij;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Llij;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v8
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llik;->a()Llij;

    move-result-object v0

    return-object v0
.end method
