.class final Ljcl;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljgw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljgw;

    const/4 v1, 0x0

    sget-object v2, Ljcm;->a:Ljck;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljcm;->b:Ljck;

    aput-object v2, v0, v1

    sput-object v0, Ljcl;->a:[Ljgw;

    return-void
.end method
