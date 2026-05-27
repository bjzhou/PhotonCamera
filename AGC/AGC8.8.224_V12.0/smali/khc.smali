.class public final Lkhc;
.super Ljava/lang/Object;

# interfaces
.implements Lkfb;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhc;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a(Lkeq;)Lken;
    .locals 78

    move-object/from16 v0, p0

    iget-object v1, v0, Lkhc;->a:Loiw;

    check-cast v1, Lesf;

    invoke-virtual {v1}, Lesf;->a()Lesk;

    move-result-object v1

    new-instance v2, Lkgd;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lkgd;-><init>(Lkeq;)V

    iput-object v2, v1, Lesk;->b:Lkgd;

    iget-object v2, v1, Lesk;->b:Lkgd;

    const-class v3, Lkgd;

    invoke-static {v2, v3}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v2, v1, Lesk;->a:Lesh;

    iget-object v4, v1, Lesk;->b:Lkgd;

    new-instance v1, Lkge;

    invoke-direct {v1, v4}, Lkge;-><init>(Lkgd;)V

    sget-object v3, Lkgf;->a:Lims;

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    move-object/from16 v29, v3

    sget-object v5, Lkgj;->a:Lims;

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v19

    move-object/from16 v21, v19

    sget-object v5, Lkkj;->a:Lkhz;

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v5

    iget-object v6, v2, Lesh;->aQ:Loiw;

    new-instance v15, Lkid;

    move-object/from16 v33, v15

    invoke-direct {v15, v6}, Lkid;-><init>(Loiw;)V

    iget-object v6, v2, Lesh;->ab:Loiw;

    new-instance v14, Lfmj;

    const/4 v13, 0x2

    const/4 v12, 0x0

    invoke-direct {v14, v6, v1, v13, v12}, Lfmj;-><init>(Loiw;Loiw;I[B)V

    iget-object v7, v2, Lesh;->as:Loiw;

    iget-object v8, v2, Lesh;->ak:Loiw;

    iget-object v9, v2, Lesh;->o:Loiw;

    iget-object v10, v2, Lesh;->h:Loiw;

    iget-object v11, v2, Lesh;->c:Loiw;

    iget-object v6, v2, Lesh;->aS:Loiw;

    new-instance v18, Lhdl;

    const/16 v16, 0x9

    const/16 v17, 0x0

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    move-object/from16 v22, v11

    move-object v11, v5

    move-object v0, v12

    move-object v12, v15

    move-object/from16 v13, v22

    move-object/from16 p1, v14

    move-object/from16 v22, v15

    move-object/from16 v15, v20

    invoke-direct/range {v6 .. v17}, Lhdl;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[S)V

    invoke-static/range {v18 .. v18}, Logj;->b(Loiw;)Loiw;

    move-result-object v12

    iget-object v7, v2, Lesh;->ak:Loiw;

    iget-object v9, v2, Lesh;->o:Loiw;

    new-instance v13, Lhfg;

    const/16 v10, 0x13

    const/4 v11, 0x0

    move-object v15, v5

    move-object v5, v13

    move-object v6, v3

    move-object/from16 v8, v19

    invoke-direct/range {v5 .. v11}, Lhfg;-><init>(Loiw;Loiw;Loiw;Loiw;I[[[I)V

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    sget-object v5, Lkhy;->a:Lkhz;

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v38

    iget-object v9, v2, Lesh;->o:Loiw;

    iget-object v10, v2, Lesh;->h:Loiw;

    iget-object v13, v2, Lesh;->ab:Loiw;

    new-instance v11, Lkkd;

    move-object v5, v11

    move-object v6, v1

    move-object v7, v12

    move-object v8, v14

    move-object v12, v11

    move-object/from16 v11, v22

    move-object v0, v12

    move-object v12, v13

    move-object/from16 v13, v38

    move-object/from16 v28, v4

    move-object v4, v14

    move-object v14, v1

    invoke-direct/range {v5 .. v14}, Lkkd;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    new-instance v5, Lkgg;

    invoke-direct {v5, v0, v1}, Lkgg;-><init>(Loiw;Loiw;)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    new-instance v5, Lird;

    const/16 v6, 0xc

    move-object/from16 v14, p1

    invoke-direct {v5, v15, v14, v6}, Lird;-><init>(Loiw;Loiw;I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v12

    iget-object v8, v2, Lesh;->ab:Loiw;

    iget-object v10, v2, Lesh;->aR:Loiw;

    new-instance v16, Lgoq;

    const/16 v13, 0xe

    move-object/from16 v5, v16

    move-object/from16 v6, v19

    move-object v7, v1

    move-object v9, v0

    move-object v11, v15

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-direct/range {v5 .. v14}, Lgoq;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[C)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v5

    move-object/from16 v23, v5

    iget-object v6, v2, Lesh;->o:Loiw;

    new-instance v7, Lird;

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct {v7, v1, v6, v8, v9}, Lird;-><init>(Loiw;Loiw;I[F)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    iget-object v9, v2, Lesh;->aS:Loiw;

    iget-object v11, v2, Lesh;->o:Loiw;

    iget-object v12, v2, Lesh;->h:Loiw;

    new-instance v16, Lhif;

    const/16 v13, 0xb

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    move-object v8, v0

    move-object v10, v14

    move-object/from16 p1, v5

    move-object v5, v14

    move-object/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Lhif;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[Z)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v16

    move-object/from16 v24, v16

    iget-object v6, v2, Lesh;->ak:Loiw;

    new-instance v7, Lird;

    const/4 v8, 0x6

    invoke-direct {v7, v4, v6, v8}, Lird;-><init>(Loiw;Loiw;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    new-instance v7, Lihq;

    const/16 v8, 0x11

    invoke-direct {v7, v6, v8}, Lihq;-><init>(Loiw;I)V

    invoke-static {v7}, Logp;->a(Loiw;)Loiw;

    move-result-object v6

    iget-object v8, v2, Lesh;->o:Loiw;

    iget-object v10, v2, Lesh;->aT:Loiw;

    iget-object v12, v2, Lesh;->h:Loiw;

    new-instance v17, Lgux;

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move-object v9, v6

    move-object/from16 v11, v22

    invoke-direct/range {v7 .. v14}, Lgux;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[[[I)V

    invoke-static/range {v17 .. v17}, Logj;->b(Loiw;)Loiw;

    move-result-object v30

    move-object/from16 v25, v30

    new-instance v7, Lihq;

    const/16 v8, 0x10

    invoke-direct {v7, v5, v8}, Lihq;-><init>(Loiw;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v32

    move-object/from16 v26, v32

    iget-object v5, v2, Lesh;->h:Loiw;

    new-instance v7, Lird;

    const/4 v14, 0x5

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v14, v8}, Lird;-><init>(Loiw;Loiw;I[Z)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v5

    new-instance v13, Lkgt;

    invoke-direct {v13, v5}, Lkgt;-><init>(Loiw;)V

    iget-object v8, v2, Lesh;->aS:Loiw;

    iget-object v9, v2, Lesh;->aU:Loiw;

    new-instance v5, Liio;

    const/16 v11, 0xa

    const/4 v12, 0x0

    move-object v7, v5

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Liio;-><init>(Loiw;Loiw;Loiw;I[[I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v12

    iget-object v10, v2, Lesh;->o:Loiw;

    iget-object v11, v2, Lesh;->h:Loiw;

    new-instance v17, Lgau;

    const/16 v18, 0xd

    const/16 v27, 0x0

    move-object/from16 v9, p1

    move-object/from16 v5, v17

    move-object/from16 v31, v6

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move-object v13, v9

    move-object v9, v3

    move-object/from16 p1, v12

    move-object/from16 v12, v38

    move-object/from16 v34, v13

    move-object v13, v1

    move/from16 v14, v18

    move-object/from16 v35, v15

    move-object/from16 v15, v27

    invoke-direct/range {v5 .. v15}, Lgau;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[B)V

    invoke-static/range {v17 .. v17}, Logj;->b(Loiw;)Loiw;

    move-result-object v46

    move-object/from16 v27, v46

    iget-object v5, v2, Lesh;->ak:Loiw;

    new-instance v6, Lird;

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-direct {v6, v3, v5, v7, v8}, Lird;-><init>(Loiw;Loiw;I[[B)V

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    new-instance v5, Lkjf;

    const/4 v15, 0x0

    invoke-direct {v5, v14, v15}, Lkjf;-><init>(Loiw;I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    iget-object v9, v2, Lesh;->o:Loiw;

    iget-object v10, v2, Lesh;->h:Loiw;

    new-instance v13, Lgux;

    const/16 v11, 0x11

    const/4 v12, 0x0

    move-object v5, v13

    move-object v6, v0

    move-object v7, v3

    invoke-direct/range {v5 .. v12}, Lgux;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[[[Z)V

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v47

    iget-object v10, v2, Lesh;->o:Loiw;

    iget-object v11, v2, Lesh;->h:Loiw;

    new-instance v16, Lhif;

    const/16 v12, 0xc

    const/4 v13, 0x0

    move-object/from16 v5, v16

    move-object/from16 v6, v35

    move-object v7, v1

    move-object v8, v0

    move-object/from16 v9, v47

    invoke-direct/range {v5 .. v13}, Lhif;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[F)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v55

    iget-object v10, v2, Lesh;->o:Loiw;

    iget-object v11, v2, Lesh;->h:Loiw;

    new-instance v16, Lhif;

    const/16 v12, 0xd

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v13}, Lhif;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[B)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v53

    iget-object v10, v2, Lesh;->o:Loiw;

    iget-object v11, v2, Lesh;->h:Loiw;

    new-instance v16, Lhif;

    const/16 v12, 0xe

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v13}, Lhif;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[C)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v54

    iget-object v10, v2, Lesh;->o:Loiw;

    iget-object v11, v2, Lesh;->h:Loiw;

    new-instance v16, Lhif;

    const/16 v12, 0xf

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v13}, Lhif;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[S)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v13

    iget-object v9, v2, Lesh;->o:Loiw;

    iget-object v10, v2, Lesh;->h:Loiw;

    new-instance v5, Lkhb;

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, v5

    move-object v7, v0

    move-object/from16 v8, v47

    invoke-direct/range {v6 .. v12}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v56

    iget-object v6, v2, Lesh;->c:Loiw;

    new-instance v11, Liio;

    const/16 v9, 0xb

    const/4 v10, 0x0

    move-object v5, v11

    move-object v7, v1

    move-object v8, v13

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-object/from16 v52, v8

    move/from16 v57, v9

    move/from16 v58, v10

    invoke-direct/range {v49 .. v58}, Liio;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[Z)V

    invoke-static {v11}, Logj;->b(Loiw;)Loiw;

    move-result-object v12

    iget-object v9, v2, Lesh;->o:Loiw;

    new-instance v13, Lkhb;

    const/4 v10, 0x5

    const/4 v11, 0x0

    move-object v5, v13

    move-object v6, v3

    move-object v7, v14

    move-object/from16 v8, v38

    invoke-direct/range {v5 .. v11}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[Z)V

    invoke-static {v13}, Logj;->b(Loiw;)Loiw;

    move-result-object v13

    new-instance v5, Lkje;

    invoke-direct {v5, v1}, Lkje;-><init>(Loiw;)V

    new-instance v11, Lkim;

    invoke-direct {v11, v5}, Lkim;-><init>(Loiw;)V

    iget-object v7, v2, Lesh;->bc:Loiw;

    iget-object v10, v2, Lesh;->h:Loiw;

    iget-object v9, v2, Lesh;->o:Loiw;

    new-instance v36, Lhnz;

    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object/from16 v5, v36

    move-object v6, v1

    move-object v8, v12

    move-object/from16 v16, v9

    move-object/from16 v9, v47

    move-object/from16 v39, v10

    move-object v10, v14

    move-object/from16 v40, v11

    move-object v11, v13

    move-object v12, v3

    move-object v14, v13

    move-object/from16 v13, v39

    move-object/from16 v39, v4

    move-object v4, v14

    move-object/from16 v14, v16

    const/16 v48, 0x0

    move-object/from16 v15, v22

    move-object/from16 v16, v40

    invoke-direct/range {v5 .. v18}, Lhnz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[Z)V

    invoke-static/range {v36 .. v36}, Logj;->b(Loiw;)Loiw;

    move-result-object v15

    new-instance v5, Lkjf;

    const/4 v13, 0x3

    invoke-direct {v5, v1, v13}, Lkjf;-><init>(Loiw;I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v12

    iget-object v8, v2, Lesh;->Z:Loiw;

    new-instance v14, Lkhb;

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v5, v14

    move-object v7, v12

    move-object v9, v3

    invoke-direct/range {v5 .. v11}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[F)V

    invoke-static {v14}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    new-instance v16, Lgux;

    const/16 v11, 0x12

    const/16 v17, 0x0

    move-object/from16 v5, v16

    move-object v6, v12

    move-object/from16 v7, v34

    move-object v8, v14

    move-object v9, v0

    move-object v10, v3

    move-object/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Lgux;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;I[[[F)V

    invoke-static/range {v16 .. v16}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    new-instance v5, Lird;

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-direct {v5, v14, v0, v6, v7}, Lird;-><init>(Loiw;Loiw;I[[C)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    new-instance v0, Lkjf;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5}, Lkjf;-><init>(Loiw;I)V

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    new-instance v5, Lird;

    const/16 v6, 0xa

    invoke-direct {v5, v4, v0, v6}, Lird;-><init>(Loiw;Loiw;I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v16

    iget-object v7, v2, Lesh;->o:Loiw;

    new-instance v4, Lkhb;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v4

    move-object/from16 v6, v39

    move-object/from16 v8, v38

    move-object v9, v1

    invoke-direct/range {v5 .. v11}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[B)V

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v9

    new-instance v4, Lihq;

    const/16 v5, 0x12

    invoke-direct {v4, v1, v5}, Lihq;-><init>(Loiw;I)V

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v14

    new-instance v10, Lhfg;

    const/16 v44, 0x11

    const/16 v45, 0x0

    move-object/from16 v39, v10

    move-object/from16 v40, p1

    move-object/from16 v41, v30

    move-object/from16 v42, v9

    move-object/from16 v43, v14

    invoke-direct/range {v39 .. v45}, Lhfg;-><init>(Loiw;Loiw;Loiw;Loiw;I[[[S)V

    new-instance v4, Lkjf;

    const/4 v12, 0x4

    move-object/from16 v5, v34

    invoke-direct {v4, v5, v12}, Lkjf;-><init>(Loiw;I)V

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v4

    new-instance v5, Lkjf;

    const/4 v6, 0x5

    invoke-direct {v5, v4, v6}, Lkjf;-><init>(Loiw;I)V

    sget-object v4, Logo;->a:Logk;

    invoke-static {v13}, Llho;->L(I)Ljava/util/List;

    move-result-object v4

    invoke-static/range {v48 .. v48}, Llho;->L(I)Ljava/util/List;

    move-result-object v6

    iget-object v7, v2, Lesh;->bd:Loiw;

    invoke-static {v7, v4}, Llho;->H(Loiw;Ljava/util/List;)V

    iget-object v7, v2, Lesh;->bm:Loiw;

    invoke-static {v7, v4}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v5, v4}, Llho;->H(Loiw;Ljava/util/List;)V

    invoke-static {v4, v6}, Llho;->F(Ljava/util/List;Ljava/util/List;)Logo;

    move-result-object v5

    iget-object v7, v2, Lesh;->h:Loiw;

    new-instance v11, Lhfg;

    const/16 v8, 0x12

    move-object/from16 v37, v3

    move-object v3, v11

    move-object/from16 v4, v28

    move-object/from16 v6, v31

    invoke-direct/range {v3 .. v8}, Lhfg;-><init>(Lkgd;Loiw;Loiw;Loiw;I)V

    invoke-static {v11}, Logj;->b(Loiw;)Loiw;

    move-result-object v11

    new-instance v3, Lgoq;

    const/16 v13, 0xf

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v1

    move-object v7, v9

    move-object v8, v10

    move-object/from16 v9, v32

    move-object/from16 v10, v30

    move-object/from16 v12, v38

    move-object/from16 v17, v0

    move-object v0, v14

    move-object v14, v4

    invoke-direct/range {v5 .. v14}, Lgoq;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[[S)V

    new-instance v4, Lird;

    move-object/from16 v12, v35

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v4, v12, v0, v6, v5}, Lird;-><init>(Loiw;Loiw;I[I)V

    invoke-static {v4}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    iget-object v4, v2, Lesh;->o:Loiw;

    new-instance v13, Lkhb;

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v5, v13

    move-object v6, v0

    move-object v7, v12

    move-object v8, v4

    move-object v9, v1

    invoke-direct/range {v5 .. v11}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[S)V

    new-instance v14, Lkhe;

    invoke-direct {v14, v3, v13}, Lkhe;-><init>(Loiw;Loiw;)V

    new-instance v3, Logi;

    move-object/from16 v31, v3

    invoke-direct {v3}, Logi;-><init>()V

    new-instance v5, Lhfg;

    const/16 v6, 0x14

    const/4 v13, 0x0

    move-object v7, v5

    move-object v8, v0

    move-object v9, v12

    move-object v10, v3

    move-object v11, v4

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lhfg;-><init>(Loiw;Loiw;Loiw;Loiw;I[[[Z)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    move-object/from16 v36, v0

    new-instance v9, Lkhj;

    invoke-direct {v9, v0}, Lkhj;-><init>(Loiw;)V

    new-instance v0, Lkhb;

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v0

    move-object/from16 v6, v16

    move-object/from16 v7, v37

    move-object v8, v14

    invoke-direct/range {v5 .. v11}, Lkhb;-><init>(Loiw;Loiw;Loiw;Loiw;I[C)V

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    invoke-static {v3, v0}, Logi;->a(Loiw;Loiw;)V

    iget-object v13, v2, Lesh;->aP:Loiw;

    iget-object v0, v2, Lesh;->h:Loiw;

    iget-object v4, v2, Lesh;->o:Loiw;

    new-instance v20, Lgmz;

    const/16 v18, 0x7

    const/16 v22, 0x0

    move-object/from16 v5, v20

    move-object/from16 v6, v30

    move-object/from16 v7, v47

    move-object/from16 v8, v32

    move-object/from16 v9, v46

    move-object v10, v15

    move-object v11, v3

    move-object/from16 v12, v19

    move-object/from16 v14, v37

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v19, v22

    invoke-direct/range {v5 .. v19}, Lgmz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[B)V

    invoke-static/range {v20 .. v20}, Logj;->b(Loiw;)Loiw;

    move-result-object v28

    iget-object v7, v2, Lesh;->h:Loiw;

    new-instance v0, Lkgp;

    move-object/from16 v32, v0

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v7}, Lkgp;-><init>(Loiw;Loiw;)V

    iget-object v0, v2, Lesh;->aP:Loiw;

    move-object/from16 v22, v0

    iget-object v0, v2, Lesh;->I:Loiw;

    move-object/from16 v30, v0

    iget-object v0, v2, Lesh;->aT:Loiw;

    move-object/from16 v34, v0

    iget-object v6, v2, Lesh;->o:Loiw;

    move-object/from16 v35, v6

    new-instance v11, Lkgm;

    move-object/from16 v20, v11

    invoke-direct/range {v20 .. v36}, Lkgm;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    iget-object v10, v2, Lesh;->aO:Loiw;

    iget-object v12, v2, Lesh;->aa:Loiw;

    iget-object v13, v2, Lesh;->aV:Loiw;

    new-instance v0, Lhdl;

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v5, v0

    move-object v8, v1

    move-object/from16 v9, v37

    move-object/from16 v14, v38

    invoke-direct/range {v5 .. v16}, Lhdl;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[C)V

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    invoke-interface {v0}, Lken;->g()V

    return-object v0
.end method
