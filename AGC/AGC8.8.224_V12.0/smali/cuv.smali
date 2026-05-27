.class public final Lcuv;
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

    iput-object p1, p0, Lcuv;->a:Loiw;

    iput-object p2, p0, Lcuv;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcuu;
    .locals 4

    iget-object v0, p0, Lcuv;->a:Loiw;

    check-cast v0, Lcut;

    invoke-virtual {v0}, Lcut;->a()Lcvr;

    move-result-object v0

    iget-object v1, p0, Lcuv;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyd;

    new-instance v2, Lcuu;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcuu;-><init>(Lcvr;Lgyd;[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcuv;->a()Lcuu;

    move-result-object v0

    return-object v0
.end method
