.class public final Lacw;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/FileOutputStream;Loxq;)Lamv;
    .locals 16

    new-instance v6, Lamt;

    invoke-direct {v6}, Lamt;-><init>()V

    new-instance v9, Lbby;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lbby;-><init>(Lamt;Loxq;[B[B[B)V

    new-instance v10, Lmbe;

    invoke-direct {v10}, Lmbe;-><init>()V

    new-instance v11, Lams;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lams;-><init>([B)V

    const-string v0, "isom"

    const/high16 v1, 0x20000

    invoke-virtual {v11, v0, v1}, Lams;->c(Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Lams;->b(Ljava/lang/String;)V

    const-string v0, "iso2"

    invoke-virtual {v11, v0}, Lams;->b(Ljava/lang/String;)V

    const-string v0, "mp41"

    invoke-virtual {v11, v0}, Lams;->b(Ljava/lang/String;)V

    new-instance v0, Lamz;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lamz;-><init>(Ljava/io/FileOutputStream;Lbby;Lmbe;Lams;[B[B[B[B)V

    sget-object v1, Lana;->a:[[S

    new-instance v1, Lamv;

    invoke-direct {v1, v0, v6}, Lamv;-><init>(Lamw;Lamt;)V

    return-object v1
.end method
