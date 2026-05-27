.class public final enum Llql;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Llql;

.field public static final enum b:Llql;

.field public static final enum c:Llql;

.field public static final enum d:Llql;

.field public static final enum e:Llql;

.field public static final enum f:Llql;

.field public static final enum g:Llql;

.field public static final enum h:Llql;

.field private static final synthetic i:[Llql;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Llql;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llql;->a:Llql;

    new-instance v1, Llql;

    const-string v3, "NEEDS_SIGN_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v1, Llql;->b:Llql;

    new-instance v3, Llql;

    const-string v5, "UNSUPPORTED_FOR_USER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v3, Llql;->c:Llql;

    new-instance v5, Llql;

    const-string v7, "NEEDS_ONBOARDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v5, Llql;->d:Llql;

    new-instance v7, Llql;

    const-string v9, "SETUP_COMPLETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v7, Llql;->e:Llql;

    new-instance v9, Llql;

    const-string v11, "ACCESS_DENIED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v9, Llql;->f:Llql;

    new-instance v11, Llql;

    const-string v13, "UNSUPPORTED_FOR_DEVICE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v11, Llql;->g:Llql;

    new-instance v13, Llql;

    const-string v15, "UNSUPPORTED_FOR_ALL_USERS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Llql;-><init>(Ljava/lang/String;I)V

    sput-object v13, Llql;->h:Llql;

    const/16 v15, 0x8

    new-array v15, v15, [Llql;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Llql;->i:[Llql;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Llql;
    .locals 1

    sget-object v0, Llql;->i:[Llql;

    invoke-virtual {v0}, [Llql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llql;

    return-object v0
.end method
