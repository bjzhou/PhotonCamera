.class public final enum Lnwk;
.super Ljava/lang/Enum;


# static fields
.field public static final enum A:Lnwk;

.field public static final enum B:Lnwk;

.field public static final enum C:Lnwk;

.field public static final enum D:Lnwk;

.field public static final enum E:Lnwk;

.field public static final enum F:Lnwk;

.field public static final enum G:Lnwk;

.field public static final enum H:Lnwk;

.field public static final enum I:Lnwk;

.field public static final enum J:Lnwk;

.field public static final enum K:Lnwk;

.field public static final enum L:Lnwk;

.field public static final enum M:Lnwk;

.field public static final enum N:Lnwk;

.field public static final enum O:Lnwk;

.field public static final enum P:Lnwk;

.field public static final enum Q:Lnwk;

.field public static final enum R:Lnwk;

.field public static final enum S:Lnwk;

.field public static final enum T:Lnwk;

.field public static final enum U:Lnwk;

.field public static final enum V:Lnwk;

.field public static final enum W:Lnwk;

.field public static final enum X:Lnwk;

.field public static final enum Y:Lnwk;

.field public static final enum a:Lnwk;

.field private static final aa:[Lnwk;

.field private static final synthetic ab:[Lnwk;

.field public static final enum b:Lnwk;

.field public static final enum c:Lnwk;

.field public static final enum d:Lnwk;

.field public static final enum e:Lnwk;

.field public static final enum f:Lnwk;

.field public static final enum g:Lnwk;

.field public static final enum h:Lnwk;

.field public static final enum i:Lnwk;

.field public static final enum j:Lnwk;

.field public static final enum k:Lnwk;

.field public static final enum l:Lnwk;

.field public static final enum m:Lnwk;

.field public static final enum n:Lnwk;

.field public static final enum o:Lnwk;

.field public static final enum p:Lnwk;

.field public static final enum q:Lnwk;

.field public static final enum r:Lnwk;

.field public static final enum s:Lnwk;

.field public static final enum t:Lnwk;

.field public static final enum u:Lnwk;

.field public static final enum v:Lnwk;

.field public static final enum w:Lnwk;

.field public static final enum x:Lnwk;

.field public static final enum y:Lnwk;

.field public static final enum z:Lnwk;


# instance fields
.field public final Z:I


# direct methods
.method static constructor <clinit>()V
    .locals 62

    new-instance v6, Lnwk;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lnxf;->e:Lnxf;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v6, Lnwk;->a:Lnwk;

    new-instance v0, Lnwk;

    sget-object v12, Lnxf;->d:Lnxf;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v0, Lnwk;->b:Lnwk;

    new-instance v1, Lnwk;

    const-string v14, "INT64"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x1

    sget-object v18, Lnxf;->c:Lnxf;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v1, Lnwk;->c:Lnwk;

    new-instance v2, Lnwk;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    sget-object v12, Lnxf;->c:Lnxf;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v2, Lnwk;->d:Lnwk;

    new-instance v3, Lnwk;

    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x4

    sget-object v18, Lnxf;->b:Lnxf;

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v3, Lnwk;->e:Lnwk;

    new-instance v4, Lnwk;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    sget-object v12, Lnxf;->c:Lnxf;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v4, Lnwk;->f:Lnwk;

    new-instance v5, Lnwk;

    const-string v14, "FIXED32"

    const/16 v16, 0x6

    sget-object v18, Lnxf;->b:Lnxf;

    move-object v13, v5

    move/from16 v15, v16

    invoke-direct/range {v13 .. v18}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v5, Lnwk;->g:Lnwk;

    new-instance v13, Lnwk;

    const-string v8, "BOOL"

    const/4 v10, 0x7

    sget-object v12, Lnxf;->f:Lnxf;

    move-object v7, v13

    move v9, v10

    invoke-direct/range {v7 .. v12}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v13, Lnwk;->h:Lnwk;

    new-instance v7, Lnwk;

    const-string v15, "STRING"

    const/16 v17, 0x8

    const/16 v18, 0x1

    sget-object v19, Lnxf;->g:Lnxf;

    move-object v14, v7

    move/from16 v16, v17

    invoke-direct/range {v14 .. v19}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v7, Lnwk;->i:Lnwk;

    new-instance v8, Lnwk;

    const-string v21, "MESSAGE"

    const/16 v23, 0x9

    const/16 v24, 0x1

    sget-object v25, Lnxf;->j:Lnxf;

    move-object/from16 v20, v8

    move/from16 v22, v23

    invoke-direct/range {v20 .. v25}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v8, Lnwk;->j:Lnwk;

    new-instance v9, Lnwk;

    sget-object v19, Lnxf;->h:Lnxf;

    const-string v15, "BYTES"

    const/16 v17, 0xa

    move-object v14, v9

    move/from16 v16, v17

    invoke-direct/range {v14 .. v19}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v9, Lnwk;->k:Lnwk;

    new-instance v10, Lnwk;

    const-string v21, "UINT32"

    const/16 v23, 0xb

    sget-object v25, Lnxf;->b:Lnxf;

    move-object/from16 v20, v10

    move/from16 v22, v23

    invoke-direct/range {v20 .. v25}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v10, Lnwk;->l:Lnwk;

    new-instance v11, Lnwk;

    const-string v15, "ENUM"

    const/16 v17, 0xc

    sget-object v19, Lnxf;->i:Lnxf;

    move-object v14, v11

    move/from16 v16, v17

    invoke-direct/range {v14 .. v19}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v11, Lnwk;->m:Lnwk;

    new-instance v12, Lnwk;

    const-string v21, "SFIXED32"

    const/16 v23, 0xd

    sget-object v25, Lnxf;->b:Lnxf;

    move-object/from16 v20, v12

    move/from16 v22, v23

    invoke-direct/range {v20 .. v25}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v12, Lnwk;->n:Lnwk;

    new-instance v20, Lnwk;

    const-string v15, "SFIXED64"

    const/16 v17, 0xe

    sget-object v19, Lnxf;->c:Lnxf;

    move-object/from16 v14, v20

    move/from16 v16, v17

    invoke-direct/range {v14 .. v19}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v20, Lnwk;->o:Lnwk;

    new-instance v14, Lnwk;

    const-string v22, "SINT32"

    const/16 v24, 0xf

    const/16 v25, 0x1

    sget-object v26, Lnxf;->b:Lnxf;

    move-object/from16 v21, v14

    move/from16 v23, v24

    invoke-direct/range {v21 .. v26}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v14, Lnwk;->p:Lnwk;

    new-instance v15, Lnwk;

    const-string v28, "SINT64"

    const/16 v30, 0x10

    const/16 v31, 0x1

    sget-object v32, Lnxf;->c:Lnxf;

    move-object/from16 v27, v15

    move/from16 v29, v30

    invoke-direct/range {v27 .. v32}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v15, Lnwk;->q:Lnwk;

    new-instance v16, Lnwk;

    const-string v22, "GROUP"

    const/16 v24, 0x11

    sget-object v26, Lnxf;->j:Lnxf;

    move-object/from16 v21, v16

    move/from16 v23, v24

    invoke-direct/range {v21 .. v26}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v16, Lnwk;->r:Lnwk;

    new-instance v17, Lnwk;

    const-string v28, "DOUBLE_LIST"

    const/16 v30, 0x12

    const/16 v31, 0x2

    sget-object v32, Lnxf;->e:Lnxf;

    move-object/from16 v27, v17

    move/from16 v29, v30

    invoke-direct/range {v27 .. v32}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v17, Lnwk;->s:Lnwk;

    new-instance v18, Lnwk;

    const-string v22, "FLOAT_LIST"

    const/16 v24, 0x13

    const/16 v25, 0x2

    sget-object v26, Lnxf;->d:Lnxf;

    move-object/from16 v21, v18

    move/from16 v23, v24

    invoke-direct/range {v21 .. v26}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v18, Lnwk;->t:Lnwk;

    new-instance v19, Lnwk;

    const-string v28, "INT64_LIST"

    const/16 v30, 0x14

    sget-object v32, Lnxf;->c:Lnxf;

    move-object/from16 v27, v19

    move/from16 v29, v30

    invoke-direct/range {v27 .. v32}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v19, Lnwk;->u:Lnwk;

    new-instance v27, Lnwk;

    const-string v22, "UINT64_LIST"

    const/16 v24, 0x15

    sget-object v26, Lnxf;->c:Lnxf;

    move-object/from16 v21, v27

    move/from16 v23, v24

    invoke-direct/range {v21 .. v26}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v27, Lnwk;->v:Lnwk;

    new-instance v21, Lnwk;

    const-string v29, "INT32_LIST"

    const/16 v31, 0x16

    const/16 v32, 0x2

    sget-object v33, Lnxf;->b:Lnxf;

    move-object/from16 v28, v21

    move/from16 v30, v31

    invoke-direct/range {v28 .. v33}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v21, Lnwk;->w:Lnwk;

    new-instance v22, Lnwk;

    const-string v35, "FIXED64_LIST"

    const/16 v37, 0x17

    const/16 v38, 0x2

    sget-object v39, Lnxf;->c:Lnxf;

    move-object/from16 v34, v22

    move/from16 v36, v37

    invoke-direct/range {v34 .. v39}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v22, Lnwk;->x:Lnwk;

    new-instance v23, Lnwk;

    const-string v29, "FIXED32_LIST"

    const/16 v31, 0x18

    sget-object v33, Lnxf;->b:Lnxf;

    move-object/from16 v28, v23

    move/from16 v30, v31

    invoke-direct/range {v28 .. v33}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v23, Lnwk;->y:Lnwk;

    new-instance v24, Lnwk;

    const-string v35, "BOOL_LIST"

    const/16 v37, 0x19

    sget-object v39, Lnxf;->f:Lnxf;

    move-object/from16 v34, v24

    move/from16 v36, v37

    invoke-direct/range {v34 .. v39}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v24, Lnwk;->z:Lnwk;

    new-instance v25, Lnwk;

    const-string v29, "STRING_LIST"

    const/16 v31, 0x1a

    sget-object v33, Lnxf;->g:Lnxf;

    move-object/from16 v28, v25

    move/from16 v30, v31

    invoke-direct/range {v28 .. v33}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v25, Lnwk;->A:Lnwk;

    new-instance v26, Lnwk;

    const-string v35, "MESSAGE_LIST"

    const/16 v37, 0x1b

    sget-object v39, Lnxf;->j:Lnxf;

    move-object/from16 v34, v26

    move/from16 v36, v37

    invoke-direct/range {v34 .. v39}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v26, Lnwk;->B:Lnwk;

    new-instance v34, Lnwk;

    const-string v29, "BYTES_LIST"

    const/16 v31, 0x1c

    sget-object v33, Lnxf;->h:Lnxf;

    move-object/from16 v28, v34

    move/from16 v30, v31

    invoke-direct/range {v28 .. v33}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v34, Lnwk;->C:Lnwk;

    new-instance v28, Lnwk;

    const-string v36, "UINT32_LIST"

    const/16 v38, 0x1d

    const/16 v39, 0x2

    sget-object v40, Lnxf;->b:Lnxf;

    move-object/from16 v35, v28

    move/from16 v37, v38

    invoke-direct/range {v35 .. v40}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v28, Lnwk;->D:Lnwk;

    new-instance v29, Lnwk;

    sget-object v46, Lnxf;->i:Lnxf;

    const-string v42, "ENUM_LIST"

    const/16 v44, 0x1e

    const/16 v45, 0x2

    move-object/from16 v41, v29

    move/from16 v43, v44

    invoke-direct/range {v41 .. v46}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v29, Lnwk;->E:Lnwk;

    new-instance v30, Lnwk;

    const-string v36, "SFIXED32_LIST"

    const/16 v38, 0x1f

    sget-object v40, Lnxf;->b:Lnxf;

    move-object/from16 v35, v30

    move/from16 v37, v38

    invoke-direct/range {v35 .. v40}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v30, Lnwk;->F:Lnwk;

    new-instance v31, Lnwk;

    const-string v42, "SFIXED64_LIST"

    const/16 v44, 0x20

    sget-object v46, Lnxf;->c:Lnxf;

    move-object/from16 v41, v31

    move/from16 v43, v44

    invoke-direct/range {v41 .. v46}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v31, Lnwk;->G:Lnwk;

    new-instance v32, Lnwk;

    const-string v36, "SINT32_LIST"

    const/16 v38, 0x21

    sget-object v40, Lnxf;->b:Lnxf;

    move-object/from16 v35, v32

    move/from16 v37, v38

    invoke-direct/range {v35 .. v40}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v32, Lnwk;->H:Lnwk;

    new-instance v33, Lnwk;

    const-string v42, "SINT64_LIST"

    const/16 v44, 0x22

    sget-object v46, Lnxf;->c:Lnxf;

    move-object/from16 v41, v33

    move/from16 v43, v44

    invoke-direct/range {v41 .. v46}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v33, Lnwk;->I:Lnwk;

    new-instance v41, Lnwk;

    const-string v36, "DOUBLE_LIST_PACKED"

    const/16 v38, 0x23

    const/16 v39, 0x3

    sget-object v40, Lnxf;->e:Lnxf;

    move-object/from16 v35, v41

    move/from16 v37, v38

    invoke-direct/range {v35 .. v40}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v41, Lnwk;->J:Lnwk;

    new-instance v35, Lnwk;

    const-string v43, "FLOAT_LIST_PACKED"

    const/16 v45, 0x24

    const/16 v46, 0x3

    sget-object v47, Lnxf;->d:Lnxf;

    move-object/from16 v42, v35

    move/from16 v44, v45

    invoke-direct/range {v42 .. v47}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v35, Lnwk;->K:Lnwk;

    new-instance v36, Lnwk;

    const-string v49, "INT64_LIST_PACKED"

    const/16 v51, 0x25

    const/16 v52, 0x3

    sget-object v53, Lnxf;->c:Lnxf;

    move-object/from16 v48, v36

    move/from16 v50, v51

    invoke-direct/range {v48 .. v53}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v36, Lnwk;->L:Lnwk;

    new-instance v37, Lnwk;

    const-string v43, "UINT64_LIST_PACKED"

    const/16 v45, 0x26

    sget-object v47, Lnxf;->c:Lnxf;

    move-object/from16 v42, v37

    move/from16 v44, v45

    invoke-direct/range {v42 .. v47}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v37, Lnwk;->M:Lnwk;

    new-instance v38, Lnwk;

    const-string v49, "INT32_LIST_PACKED"

    const/16 v51, 0x27

    sget-object v53, Lnxf;->b:Lnxf;

    move-object/from16 v48, v38

    move/from16 v50, v51

    invoke-direct/range {v48 .. v53}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v38, Lnwk;->N:Lnwk;

    new-instance v39, Lnwk;

    const-string v43, "FIXED64_LIST_PACKED"

    const/16 v45, 0x28

    sget-object v47, Lnxf;->c:Lnxf;

    move-object/from16 v42, v39

    move/from16 v44, v45

    invoke-direct/range {v42 .. v47}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v39, Lnwk;->O:Lnwk;

    new-instance v40, Lnwk;

    const-string v49, "FIXED32_LIST_PACKED"

    const/16 v51, 0x29

    sget-object v53, Lnxf;->b:Lnxf;

    move-object/from16 v48, v40

    move/from16 v50, v51

    invoke-direct/range {v48 .. v53}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v40, Lnwk;->P:Lnwk;

    new-instance v48, Lnwk;

    const-string v43, "BOOL_LIST_PACKED"

    const/16 v45, 0x2a

    sget-object v47, Lnxf;->f:Lnxf;

    move-object/from16 v42, v48

    move/from16 v44, v45

    invoke-direct/range {v42 .. v47}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v48, Lnwk;->Q:Lnwk;

    new-instance v42, Lnwk;

    const-string v50, "UINT32_LIST_PACKED"

    const/16 v52, 0x2b

    const/16 v53, 0x3

    sget-object v54, Lnxf;->b:Lnxf;

    move-object/from16 v49, v42

    move/from16 v51, v52

    invoke-direct/range {v49 .. v54}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v42, Lnwk;->R:Lnwk;

    new-instance v43, Lnwk;

    const-string v56, "ENUM_LIST_PACKED"

    const/16 v58, 0x2c

    const/16 v59, 0x3

    sget-object v60, Lnxf;->i:Lnxf;

    move-object/from16 v55, v43

    move/from16 v57, v58

    invoke-direct/range {v55 .. v60}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v43, Lnwk;->S:Lnwk;

    new-instance v44, Lnwk;

    const-string v50, "SFIXED32_LIST_PACKED"

    const/16 v52, 0x2d

    sget-object v54, Lnxf;->b:Lnxf;

    move-object/from16 v49, v44

    move/from16 v51, v52

    invoke-direct/range {v49 .. v54}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v44, Lnwk;->T:Lnwk;

    new-instance v45, Lnwk;

    const-string v56, "SFIXED64_LIST_PACKED"

    const/16 v58, 0x2e

    sget-object v60, Lnxf;->c:Lnxf;

    move-object/from16 v55, v45

    move/from16 v57, v58

    invoke-direct/range {v55 .. v60}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v45, Lnwk;->U:Lnwk;

    new-instance v46, Lnwk;

    const-string v50, "SINT32_LIST_PACKED"

    const/16 v52, 0x2f

    sget-object v54, Lnxf;->b:Lnxf;

    move-object/from16 v49, v46

    move/from16 v51, v52

    invoke-direct/range {v49 .. v54}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v46, Lnwk;->V:Lnwk;

    new-instance v47, Lnwk;

    const-string v56, "SINT64_LIST_PACKED"

    const/16 v58, 0x30

    sget-object v60, Lnxf;->c:Lnxf;

    move-object/from16 v55, v47

    move/from16 v57, v58

    invoke-direct/range {v55 .. v60}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v47, Lnwk;->W:Lnwk;

    new-instance v55, Lnwk;

    const-string v50, "GROUP_LIST"

    const/16 v52, 0x31

    const/16 v53, 0x2

    sget-object v54, Lnxf;->j:Lnxf;

    move-object/from16 v49, v55

    move/from16 v51, v52

    invoke-direct/range {v49 .. v54}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v55, Lnwk;->X:Lnwk;

    new-instance v49, Lnwk;

    const-string v57, "MAP"

    const/16 v59, 0x32

    const/16 v60, 0x4

    sget-object v61, Lnxf;->a:Lnxf;

    move-object/from16 v56, v49

    move/from16 v58, v59

    invoke-direct/range {v56 .. v61}, Lnwk;-><init>(Ljava/lang/String;IIILnxf;)V

    sput-object v49, Lnwk;->Y:Lnwk;

    move-object/from16 v50, v15

    const/16 v15, 0x33

    new-array v15, v15, [Lnwk;

    const/16 v51, 0x0

    aput-object v6, v15, v51

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    const/16 v0, 0x2d

    aput-object v44, v15, v0

    const/16 v0, 0x2e

    aput-object v45, v15, v0

    const/16 v0, 0x2f

    aput-object v46, v15, v0

    const/16 v0, 0x30

    aput-object v47, v15, v0

    const/16 v0, 0x31

    aput-object v55, v15, v0

    const/16 v0, 0x32

    aput-object v49, v15, v0

    sput-object v15, Lnwk;->ab:[Lnwk;

    invoke-static {}, Lnwk;->values()[Lnwk;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lnwk;

    sput-object v2, Lnwk;->aa:[Lnwk;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lnwk;->aa:[Lnwk;

    iget v5, v3, Lnwk;->Z:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILnxf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnwk;->Z:I

    sget-object p1, Lnxf;->a:Lnxf;

    add-int/lit8 p1, p4, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p5, Lnxf;->k:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    invoke-virtual {p5}, Lnxf;->ordinal()I

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lnwk;
    .locals 1

    sget-object v0, Lnwk;->ab:[Lnwk;

    invoke-virtual {v0}, [Lnwk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnwk;

    return-object v0
.end method
