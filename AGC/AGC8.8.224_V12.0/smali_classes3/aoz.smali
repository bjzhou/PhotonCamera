.class public final enum Laoz;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Laoz;

.field public static final enum b:Laoz;

.field public static final enum c:Laoz;

.field public static final enum d:Laoz;

.field public static final enum e:Laoz;

.field private static final synthetic g:[Laoz;


# instance fields
.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Laoz;

    const-wide/16 v1, 0x0

    const-string v3, "DEX_FILES"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Laoz;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Laoz;->a:Laoz;

    new-instance v1, Laoz;

    const-string v2, "EXTRA_DESCRIPTORS"

    const/4 v3, 0x1

    const-wide/16 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Laoz;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Laoz;->b:Laoz;

    new-instance v2, Laoz;

    const-string v5, "CLASSES"

    const/4 v6, 0x2

    const-wide/16 v7, 0x2

    invoke-direct {v2, v5, v6, v7, v8}, Laoz;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Laoz;->c:Laoz;

    new-instance v5, Laoz;

    const-string v7, "METHODS"

    const/4 v8, 0x3

    const-wide/16 v9, 0x3

    invoke-direct {v5, v7, v8, v9, v10}, Laoz;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Laoz;->d:Laoz;

    new-instance v7, Laoz;

    const-string v9, "AGGREGATION_COUNT"

    const/4 v10, 0x4

    const-wide/16 v11, 0x4

    invoke-direct {v7, v9, v10, v11, v12}, Laoz;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Laoz;->e:Laoz;

    const/4 v9, 0x5

    new-array v9, v9, [Laoz;

    aput-object v0, v9, v4

    aput-object v1, v9, v3

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Laoz;->g:[Laoz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Laoz;->f:J

    return-void
.end method

.method public static values()[Laoz;
    .locals 1

    sget-object v0, Laoz;->g:[Laoz;

    invoke-virtual {v0}, [Laoz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoz;

    return-object v0
.end method
