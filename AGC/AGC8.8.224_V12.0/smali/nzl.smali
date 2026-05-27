.class public final enum Lnzl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lnzl;

.field public static final enum b:Lnzl;

.field public static final enum c:Lnzl;

.field public static final enum d:Lnzl;

.field public static final enum e:Lnzl;

.field public static final enum f:Lnzl;

.field public static final enum g:Lnzl;

.field public static final enum h:Lnzl;

.field public static final enum i:Lnzl;

.field public static final enum j:Lnzl;

.field public static final enum k:Lnzl;

.field public static final enum l:Lnzl;

.field public static final enum m:Lnzl;

.field public static final enum n:Lnzl;

.field public static final enum o:Lnzl;

.field public static final enum p:Lnzl;

.field public static final enum q:Lnzl;

.field public static final enum r:Lnzl;

.field private static final synthetic u:[Lnzl;


# instance fields
.field public final s:Lnzm;

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lnzl;

    sget-object v1, Lnzm;->d:Lnzm;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v0, Lnzl;->a:Lnzl;

    new-instance v1, Lnzl;

    sget-object v2, Lnzm;->c:Lnzm;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v1, Lnzl;->b:Lnzl;

    new-instance v2, Lnzl;

    sget-object v5, Lnzm;->b:Lnzm;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v2, Lnzl;->c:Lnzl;

    new-instance v5, Lnzl;

    sget-object v7, Lnzm;->b:Lnzm;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v5, Lnzl;->d:Lnzl;

    new-instance v7, Lnzl;

    sget-object v9, Lnzm;->a:Lnzm;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v7, Lnzl;->e:Lnzl;

    new-instance v9, Lnzl;

    sget-object v11, Lnzm;->b:Lnzm;

    const-string v13, "FIXED64"

    invoke-direct {v9, v13, v6, v11, v4}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v9, Lnzl;->f:Lnzl;

    new-instance v11, Lnzl;

    sget-object v13, Lnzm;->a:Lnzm;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v11, Lnzl;->g:Lnzl;

    new-instance v13, Lnzl;

    sget-object v14, Lnzm;->e:Lnzm;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v13, Lnzl;->h:Lnzl;

    new-instance v14, Lnzl;

    sget-object v15, Lnzm;->f:Lnzm;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v14, Lnzl;->i:Lnzl;

    new-instance v12, Lnzl;

    sget-object v15, Lnzm;->i:Lnzm;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v12, Lnzl;->j:Lnzl;

    new-instance v4, Lnzl;

    sget-object v15, Lnzm;->i:Lnzm;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v4, Lnzl;->k:Lnzl;

    new-instance v6, Lnzl;

    sget-object v15, Lnzm;->g:Lnzm;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v6, Lnzl;->l:Lnzl;

    new-instance v10, Lnzl;

    sget-object v15, Lnzm;->a:Lnzm;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v10, Lnzl;->m:Lnzl;

    new-instance v3, Lnzl;

    sget-object v15, Lnzm;->h:Lnzm;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v3, Lnzl;->n:Lnzl;

    new-instance v6, Lnzl;

    sget-object v8, Lnzm;->a:Lnzm;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v6, Lnzl;->o:Lnzl;

    new-instance v3, Lnzl;

    sget-object v8, Lnzm;->b:Lnzm;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v3, Lnzl;->p:Lnzl;

    new-instance v6, Lnzl;

    sget-object v8, Lnzm;->a:Lnzm;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v6, Lnzl;->q:Lnzl;

    new-instance v8, Lnzl;

    sget-object v15, Lnzm;->b:Lnzm;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lnzl;-><init>(Ljava/lang/String;ILnzm;I)V

    sput-object v8, Lnzl;->r:Lnzl;

    const/16 v10, 0x12

    new-array v10, v10, [Lnzl;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Lnzl;->u:[Lnzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnzm;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnzl;->s:Lnzm;

    iput p4, p0, Lnzl;->t:I

    return-void
.end method

.method public static values()[Lnzl;
    .locals 1

    sget-object v0, Lnzl;->u:[Lnzl;

    invoke-virtual {v0}, [Lnzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnzl;

    return-object v0
.end method
