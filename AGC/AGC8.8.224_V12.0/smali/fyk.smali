.class public final enum Lfyk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfyk;

.field public static final enum b:Lfyk;

.field public static final enum c:Lfyk;

.field public static final enum d:Lfyk;

.field private static final synthetic e:[Lfyk;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lfyk;

    const-string v1, "HW_JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfyk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfyk;->a:Lfyk;

    new-instance v1, Lfyk;

    const-string v3, "SW_JPEG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfyk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfyk;->b:Lfyk;

    new-instance v3, Lfyk;

    const-string v5, "NPF_REPROCESSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfyk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfyk;->c:Lfyk;

    new-instance v5, Lfyk;

    const-string v7, "REPROCESSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfyk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfyk;->d:Lfyk;

    const/4 v7, 0x4

    new-array v7, v7, [Lfyk;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lfyk;->e:[Lfyk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfyk;
    .locals 1

    sget-object v0, Lfyk;->e:[Lfyk;

    invoke-virtual {v0}, [Lfyk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfyk;

    return-object v0
.end method
