.class public final Lgkc;
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

    iput-object p1, p0, Lgkc;->a:Loiw;

    iput-object p2, p0, Lgkc;->b:Loiw;

    iput-object p3, p0, Lgkc;->c:Loiw;

    iput-object p4, p0, Lgkc;->d:Loiw;

    iput-object p5, p0, Lgkc;->e:Loiw;

    iput-object p6, p0, Lgkc;->f:Loiw;

    iput-object p7, p0, Lgkc;->g:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgkc;
    .locals 9

    new-instance v8, Lgkc;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lgkc;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v8
.end method


# virtual methods
.method public final b()Llij;
    .locals 10

    iget-object v1, p0, Lgkc;->a:Loiw;

    iget-object v2, p0, Lgkc;->b:Loiw;

    iget-object v3, p0, Lgkc;->c:Loiw;

    iget-object v4, p0, Lgkc;->d:Loiw;

    iget-object v5, p0, Lgkc;->e:Loiw;

    iget-object v6, p0, Lgkc;->f:Loiw;

    iget-object v7, p0, Lgkc;->g:Loiw;

    new-instance v9, Llij;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Llij;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[C)V

    return-object v9
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgkc;->b()Llij;

    move-result-object v0

    return-object v0
.end method
