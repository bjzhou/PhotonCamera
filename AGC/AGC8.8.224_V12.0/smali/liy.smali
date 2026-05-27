.class public final Lliy;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lliy;->a:Loiw;

    iput-object p2, p0, Lliy;->b:Loiw;

    iput-object p3, p0, Lliy;->c:Loiw;

    iput-object p4, p0, Lliy;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llhj;
    .locals 5

    iget-object v0, p0, Lliy;->a:Loiw;

    iget-object v1, p0, Lliy;->b:Loiw;

    invoke-static {v1}, Logn;->b(Loiw;)Loiw;

    move-result-object v1

    iget-object v2, p0, Lliy;->c:Loiw;

    iget-object v3, p0, Lliy;->d:Loiw;

    new-instance v4, Llhj;

    invoke-direct {v4, v0, v1, v2, v3}, Llhj;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lliy;->a()Llhj;

    move-result-object v0

    return-object v0
.end method
