.class public final Lgjw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgjw;->a:Loiw;

    iput-object p2, p0, Lgjw;->b:Loiw;

    iput-object p3, p0, Lgjw;->c:Loiw;

    iput-object p4, p0, Lgjw;->d:Loiw;

    iput-object p5, p0, Lgjw;->e:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;)Lgjw;
    .locals 7

    new-instance v6, Lgjw;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgjw;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v6
.end method


# virtual methods
.method public final b()Ldqx;
    .locals 8

    iget-object v1, p0, Lgjw;->a:Loiw;

    iget-object v2, p0, Lgjw;->b:Loiw;

    iget-object v3, p0, Lgjw;->c:Loiw;

    iget-object v4, p0, Lgjw;->d:Loiw;

    iget-object v5, p0, Lgjw;->e:Loiw;

    new-instance v7, Ldqx;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldqx;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;[C)V

    return-object v7
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjw;->b()Ldqx;

    move-result-object v0

    return-object v0
.end method
