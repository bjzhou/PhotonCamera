.class public final Lclg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclg;->a:Loiw;

    iput-object p2, p0, Lclg;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcls;
    .locals 4

    iget-object v0, p0, Lclg;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lclg;->b:Loiw;

    check-cast v1, Lihj;

    invoke-virtual {v1}, Lihj;->a()Lihg;

    move-result-object v1

    new-instance v2, Lcls;

    iget-object v1, v1, Lihg;->q:Ljava/lang/Object;

    check-cast v1, Ljew;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lcls;-><init>(Landroid/content/Context;Ljew;[B[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lclg;->a()Lcls;

    move-result-object v0

    return-object v0
.end method
