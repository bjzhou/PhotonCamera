.class final Lpbf;
.super Ljava/lang/Object;


# static fields
.field static final a:Llzz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lnzl;->c:Lnzl;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lnzl;->k:Lnzl;

    sget-object v3, Lpbc;->e:Lpbc;

    invoke-static {v0, v1, v2, v3}, Llzz;->B(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)Llzz;

    move-result-object v0

    sput-object v0, Lpbf;->a:Llzz;

    return-void
.end method
