.class public final enum Lj$/nio/file/F;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/q;


# static fields
.field public static final enum APPEND:Lj$/nio/file/F;

.field public static final enum CREATE:Lj$/nio/file/F;

.field public static final enum CREATE_NEW:Lj$/nio/file/F;

.field public static final enum DELETE_ON_CLOSE:Lj$/nio/file/F;

.field public static final enum DSYNC:Lj$/nio/file/F;

.field public static final enum READ:Lj$/nio/file/F;

.field public static final enum SPARSE:Lj$/nio/file/F;

.field public static final enum SYNC:Lj$/nio/file/F;

.field public static final enum TRUNCATE_EXISTING:Lj$/nio/file/F;

.field public static final enum WRITE:Lj$/nio/file/F;

.field private static final synthetic a:[Lj$/nio/file/F;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lj$/nio/file/F;

    const-string v11, "READ"

    invoke-direct {v10, v11, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lj$/nio/file/F;->READ:Lj$/nio/file/F;

    new-instance v11, Lj$/nio/file/F;

    const-string v12, "WRITE"

    invoke-direct {v11, v12, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lj$/nio/file/F;->WRITE:Lj$/nio/file/F;

    new-instance v12, Lj$/nio/file/F;

    const-string v13, "APPEND"

    invoke-direct {v12, v13, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lj$/nio/file/F;->APPEND:Lj$/nio/file/F;

    new-instance v13, Lj$/nio/file/F;

    const-string v14, "TRUNCATE_EXISTING"

    invoke-direct {v13, v14, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lj$/nio/file/F;->TRUNCATE_EXISTING:Lj$/nio/file/F;

    new-instance v14, Lj$/nio/file/F;

    const-string v15, "CREATE"

    invoke-direct {v14, v15, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lj$/nio/file/F;->CREATE:Lj$/nio/file/F;

    new-instance v15, Lj$/nio/file/F;

    const-string v5, "CREATE_NEW"

    invoke-direct {v15, v5, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lj$/nio/file/F;->CREATE_NEW:Lj$/nio/file/F;

    new-instance v5, Lj$/nio/file/F;

    const-string v4, "DELETE_ON_CLOSE"

    invoke-direct {v5, v4, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/nio/file/F;->DELETE_ON_CLOSE:Lj$/nio/file/F;

    new-instance v4, Lj$/nio/file/F;

    const-string v3, "SPARSE"

    invoke-direct {v4, v3, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/nio/file/F;->SPARSE:Lj$/nio/file/F;

    new-instance v3, Lj$/nio/file/F;

    const-string v2, "SYNC"

    invoke-direct {v3, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/nio/file/F;->SYNC:Lj$/nio/file/F;

    new-instance v2, Lj$/nio/file/F;

    const-string v1, "DSYNC"

    invoke-direct {v2, v1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj$/nio/file/F;->DSYNC:Lj$/nio/file/F;

    const/16 v1, 0xa

    new-array v1, v1, [Lj$/nio/file/F;

    aput-object v10, v1, v9

    aput-object v11, v1, v8

    aput-object v12, v1, v7

    aput-object v13, v1, v6

    const/4 v6, 0x4

    aput-object v14, v1, v6

    const/4 v6, 0x5

    aput-object v15, v1, v6

    const/4 v6, 0x6

    aput-object v5, v1, v6

    const/4 v5, 0x7

    aput-object v4, v1, v5

    const/16 v4, 0x8

    aput-object v3, v1, v4

    aput-object v2, v1, v0

    sput-object v1, Lj$/nio/file/F;->a:[Lj$/nio/file/F;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/F;
    .locals 1

    const-class v0, Lj$/nio/file/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/F;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/F;
    .locals 1

    sget-object v0, Lj$/nio/file/F;->a:[Lj$/nio/file/F;

    invoke-virtual {v0}, [Lj$/nio/file/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/F;

    return-object v0
.end method
