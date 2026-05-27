.class final Lpbb;
.super Ljava/lang/Object;


# static fields
.field static final a:Llzz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lnzl;->e:Lnzl;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lnzl;->k:Lnzl;

    sget-object v3, Lpbd;->d:Lpbd;

    invoke-static {v0, v1, v2, v3}, Llzz;->B(Lnzl;Ljava/lang/Object;Lnzl;Ljava/lang/Object;)Llzz;

    move-result-object v0

    sput-object v0, Lpbb;->a:Llzz;

    return-void
.end method
