.class public final Lcsr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsr;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llbd;
    .locals 4

    iget-object v0, p0, Lcsr;->a:Loiw;

    check-cast v0, Leqz;

    invoke-virtual {v0}, Leqz;->a()Lcdi;

    move-result-object v0

    sget-object v1, Lldg;->a:Lldg;

    const-string v2, "glvideo"

    invoke-static {v1, v2}, Lktf;->s(Lldg;Ljava/lang/String;)Llbd;

    move-result-object v1

    invoke-static {v1}, Lktf;->r(Llbd;)Llbd;

    move-result-object v1

    sget-object v2, Lchy;->b:Lchy;

    invoke-interface {v1, v2}, Llbd;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    new-instance v2, Lcfh;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Lcfh;-><init>(Llbd;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcsr;->a()Llbd;

    move-result-object v0

    return-object v0
.end method
