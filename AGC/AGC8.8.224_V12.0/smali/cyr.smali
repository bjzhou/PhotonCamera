.class public final Lcyr;
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

    iput-object p1, p0, Lcyr;->a:Loiw;

    iput-object p2, p0, Lcyr;->b:Loiw;

    iput-object p3, p0, Lcyr;->c:Loiw;

    iput-object p4, p0, Lcyr;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcvm;
    .locals 5

    iget-object v0, p0, Lcyr;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    iget-object v1, p0, Lcyr;->b:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v1

    iget-object v2, p0, Lcyr;->c:Loiw;

    invoke-static {v2}, Logj;->a(Loiw;)Logd;

    move-result-object v2

    iget-object v3, p0, Lcyr;->d:Loiw;

    invoke-static {v3}, Logj;->a(Loiw;)Logd;

    move-result-object v3

    new-instance v4, Lcvm;

    invoke-direct {v4, v0, v1, v2, v3}, Lcvm;-><init>(Logd;Logd;Logd;Logd;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcyr;->a()Lcvm;

    move-result-object v0

    return-object v0
.end method
