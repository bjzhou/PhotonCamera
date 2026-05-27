.class public final enum Lgml;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lgml;

.field public static final enum b:Lgml;

.field public static final enum c:Lgml;

.field public static final enum d:Lgml;

.field public static final enum e:Lgml;

.field public static final enum f:Lgml;

.field public static final enum g:Lgml;

.field public static final enum h:Lgml;

.field public static final enum i:Lgml;

.field public static final enum j:Lgml;

.field public static final enum k:Lgml;

.field public static final enum l:Lgml;

.field public static final enum m:Lgml;

.field public static final enum n:Lgml;

.field public static final enum o:Lgml;

.field public static final enum p:Lgml;

.field public static final q:Lmwn;

.field private static final synthetic r:[Lgml;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lgml;

    const-string v1, "RAW_HDRPLUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgml;->a:Lgml;

    new-instance v1, Lgml;

    const-string v3, "RAW_ULTRAWIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgml;->b:Lgml;

    new-instance v5, Lgml;

    const-string v3, "RAW_WIDE"

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgml;->c:Lgml;

    new-instance v3, Lgml;

    const-string v7, "RAW_WIDE_UPPER"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgml;->d:Lgml;

    new-instance v7, Lgml;

    const-string v9, "RAW_WIDE_ZOOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lgml;->e:Lgml;

    new-instance v9, Lgml;

    const-string v11, "RAW_WIDE_ZOOM_UPPER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lgml;->f:Lgml;

    new-instance v11, Lgml;

    const-string v13, "RAW_TELE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lgml;->g:Lgml;

    new-instance v13, Lgml;

    const-string v15, "RAW_TELE_ZOOM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lgml;->h:Lgml;

    new-instance v15, Lgml;

    const-string v14, "PD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lgml;->i:Lgml;

    new-instance v14, Lgml;

    const-string v12, "PD_RM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lgml;->j:Lgml;

    new-instance v12, Lgml;

    const-string v10, "DEPTH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lgml;->k:Lgml;

    new-instance v10, Lgml;

    const-string v8, "YUV_LARGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lgml;->l:Lgml;

    new-instance v8, Lgml;

    const-string v6, "YUV_ANALYSIS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lgml;->m:Lgml;

    new-instance v6, Lgml;

    const-string v4, "YUV_TELE_ZOOM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lgml;->n:Lgml;

    new-instance v4, Lgml;

    const-string v2, "YUV_TELE_ZOOM_RM"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgml;->o:Lgml;

    new-instance v2, Lgml;

    const-string v6, "VIEWFINDER"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lgml;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgml;->p:Lgml;

    const/16 v6, 0x10

    new-array v6, v6, [Lgml;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lgml;->r:[Lgml;

    const/4 v0, 0x1

    new-array v0, v0, [Lgml;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move-object v6, v3

    move-object v8, v9

    move-object v9, v11

    move-object v10, v13

    move-object v11, v0

    invoke-static/range {v5 .. v11}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Lgml;->q:Lmwn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lgml;
    .locals 1

    sget-object v0, Lgml;->r:[Lgml;

    invoke-virtual {v0}, [Lgml;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgml;

    return-object v0
.end method
