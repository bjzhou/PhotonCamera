.class final Lbkn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldne;

.field public static final b:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nm"

    aput-object v2, v0, v1

    const-string v2, "g"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "o"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-string v5, "t"

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-string v5, "s"

    aput-object v5, v0, v2

    const/4 v2, 0x5

    const-string v5, "e"

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-string v5, "r"

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-string v5, "hd"

    aput-object v5, v0, v2

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkn;->a:Ldne;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v0, v1

    const-string v1, "k"

    aput-object v1, v0, v3

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbkn;->b:Ldne;

    return-void
.end method
