.class public final enum Lj$/nio/file/D;
.super Ljava/lang/Enum;

# interfaces
.implements Lj$/nio/file/q;


# static fields
.field public static final enum APPEND:Lj$/nio/file/D;

.field public static final enum CREATE:Lj$/nio/file/D;

.field public static final enum CREATE_NEW:Lj$/nio/file/D;

.field public static final enum DELETE_ON_CLOSE:Lj$/nio/file/D;

.field public static final enum DSYNC:Lj$/nio/file/D;

.field public static final enum READ:Lj$/nio/file/D;

.field public static final enum SPARSE:Lj$/nio/file/D;

.field public static final enum SYNC:Lj$/nio/file/D;

.field public static final enum TRUNCATE_EXISTING:Lj$/nio/file/D;

.field public static final enum WRITE:Lj$/nio/file/D;

.field private static final synthetic a:[Lj$/nio/file/D;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lj$/nio/file/D;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/nio/file/D;->READ:Lj$/nio/file/D;

    new-instance v1, Lj$/nio/file/D;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/nio/file/D;->WRITE:Lj$/nio/file/D;

    new-instance v3, Lj$/nio/file/D;

    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/nio/file/D;->APPEND:Lj$/nio/file/D;

    new-instance v5, Lj$/nio/file/D;

    const-string v7, "TRUNCATE_EXISTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/nio/file/D;->TRUNCATE_EXISTING:Lj$/nio/file/D;

    new-instance v7, Lj$/nio/file/D;

    const-string v9, "CREATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/nio/file/D;->CREATE:Lj$/nio/file/D;

    new-instance v9, Lj$/nio/file/D;

    const-string v11, "CREATE_NEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lj$/nio/file/D;->CREATE_NEW:Lj$/nio/file/D;

    new-instance v11, Lj$/nio/file/D;

    const-string v13, "DELETE_ON_CLOSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lj$/nio/file/D;->DELETE_ON_CLOSE:Lj$/nio/file/D;

    new-instance v13, Lj$/nio/file/D;

    const-string v15, "SPARSE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lj$/nio/file/D;->SPARSE:Lj$/nio/file/D;

    new-instance v15, Lj$/nio/file/D;

    const-string v14, "SYNC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lj$/nio/file/D;->SYNC:Lj$/nio/file/D;

    new-instance v14, Lj$/nio/file/D;

    const-string v12, "DSYNC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lj$/nio/file/D;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lj$/nio/file/D;->DSYNC:Lj$/nio/file/D;

    const/16 v12, 0xa

    new-array v12, v12, [Lj$/nio/file/D;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lj$/nio/file/D;->a:[Lj$/nio/file/D;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/D;
    .locals 1

    const-class v0, Lj$/nio/file/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/D;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/D;
    .locals 1

    sget-object v0, Lj$/nio/file/D;->a:[Lj$/nio/file/D;

    invoke-virtual {v0}, [Lj$/nio/file/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/D;

    return-object v0
.end method
