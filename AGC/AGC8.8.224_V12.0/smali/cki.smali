.class public final Lcki;
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

    iput-object p1, p0, Lcki;->a:Loiw;

    iput-object p2, p0, Lcki;->b:Loiw;

    iput-object p3, p0, Lcki;->c:Loiw;

    iput-object p4, p0, Lcki;->d:Loiw;

    iput-object p5, p0, Lcki;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 7

    iget-object v1, p0, Lcki;->a:Loiw;

    iget-object v2, p0, Lcki;->b:Loiw;

    iget-object v3, p0, Lcki;->c:Loiw;

    iget-object v4, p0, Lcki;->d:Loiw;

    iget-object v5, p0, Lcki;->e:Loiw;

    new-instance v6, Ldqx;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldqx;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v6
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcki;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
