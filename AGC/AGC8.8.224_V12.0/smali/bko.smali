.class final Lbko;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldne;

.field public static final b:Ldne;

.field public static final c:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xc

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

    const-string v5, "w"

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-string v5, "lc"

    aput-object v5, v0, v2

    const/16 v2, 0x8

    const-string v5, "lj"

    aput-object v5, v0, v2

    const/16 v2, 0x9

    const-string v5, "ml"

    aput-object v5, v0, v2

    const/16 v2, 0xa

    const-string v5, "hd"

    aput-object v5, v0, v2

    const/16 v2, 0xb

    const-string v5, "d"

    aput-object v5, v0, v2

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbko;->a:Ldne;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v0, v1

    const-string v2, "k"

    aput-object v2, v0, v3

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbko;->b:Ldne;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "n"

    aput-object v2, v0, v1

    const-string v1, "v"

    aput-object v1, v0, v3

    invoke-static {v0}, Ldne;->J([Ljava/lang/String;)Ldne;

    move-result-object v0

    sput-object v0, Lbko;->c:Ldne;

    return-void
.end method
