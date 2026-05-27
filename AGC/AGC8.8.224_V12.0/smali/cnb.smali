.class public final synthetic Lcnb;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcnf;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcnf;Lmqi;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcoh;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldvr;Lchd;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhfx;Lnou;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhgc;Lnou;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljks;Lmqi;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llle;[Lllc;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lllp;Lnwn;I)V
    .locals 0

    iput p3, p0, Lcnb;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcnb;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "media_id"

    iget v2, v1, Lcnb;->c:I

    const-string v3, "?"

    const-string v4, ")"

    const-string v5, "("

    const-string v6, ","

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lllp;

    iget-object v0, v12, Lllp;->d:Lmap;

    invoke-virtual {v0, v8}, Lmap;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lnor;->a:Lnou;

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    check-cast v0, Llle;

    iget-object v3, v0, Llle;->b:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v4

    iget-object v0, v0, Llle;->a:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llld;

    sget-object v5, Loyt;->b:Loyt;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    check-cast v2, [Lllc;

    array-length v6, v2

    if-lez v6, :cond_5

    sget-object v3, Loys;->g:Loys;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    aget-object v4, v2, v10

    iget v5, v4, Lllc;->d:I

    iget v5, v4, Lllc;->c:I

    iget-wide v5, v4, Lllc;->b:J

    iget-wide v5, v4, Lllc;->a:J

    iget v4, v4, Lllc;->g:I

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_0
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Loys;

    iget v5, v4, Loys;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Loys;->a:I

    iput v10, v4, Loys;->b:I

    aget-object v4, v2, v10

    iget v4, v4, Lllc;->j:I

    sget-object v4, Loyu;->c:Loyu;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    aget-object v5, v2, v10

    iget v5, v5, Lllc;->j:I

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_1
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Loyu;

    iget v6, v5, Loyu;->a:I

    or-int/2addr v6, v9

    iput v6, v5, Loyu;->a:I

    iput v10, v5, Loyu;->b:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Loyu;

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Loys;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Loys;->f:Loyu;

    iget v4, v5, Loys;->a:I

    const/high16 v6, 0x400000

    or-int/2addr v4, v6

    iput v4, v5, Loys;->a:I

    aget-object v4, v2, v10

    iget-object v5, v4, Lllc;->h:Ljava/lang/String;

    iget-object v4, v4, Lllc;->f:Ljava/lang/String;

    invoke-static {v8}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Loys;

    iput v10, v3, Loys;->c:I

    iget v4, v3, Loys;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Loys;->a:I

    iget-object v0, v0, Llld;->b:Loiw;

    check-cast v0, Llfp;

    invoke-virtual {v0}, Llfp;->a()Lllb;

    aget-object v0, v2, v10

    iget-object v2, v0, Lllc;->e:Ljava/lang/String;

    iget-object v0, v0, Lllc;->i:Loza;

    throw v8

    :cond_4
    throw v8

    :cond_5
    sget-object v2, Lozv;->u:Lozv;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lozv;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Loyt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v6, Lozv;->f:Loyt;

    iget v5, v6, Lozv;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v6, Lozv;->a:I

    :try_start_0
    iget-object v0, v0, Llld;->b:Loiw;

    check-cast v0, Llfp;

    invoke-virtual {v0}, Llfp;->a()Lllb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Llld;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    const-string v6, "Exception while getting network metric extension!"

    const/16 v7, 0x11b2

    invoke-static {v5, v6, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozv;

    invoke-virtual {v4, v0}, Llie;->e(Lozv;)V

    invoke-virtual {v4}, Llie;->a()Llif;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljks;

    iget-object v3, v3, Ljks;->a:Ljku;

    invoke-virtual {v3}, Ljku;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ldja;

    move-object v5, v0

    check-cast v5, Ljks;

    iget-object v5, v5, Ljks;->b:Lkrn;

    check-cast v0, Ljks;

    iget-object v0, v0, Ljks;->c:Ljava/util/Random;

    invoke-direct {v4, v3, v5, v0}, Ldja;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lkrn;Ljava/util/Random;)V

    invoke-interface {v2, v4}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Ljmj;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v2

    :pswitch_2
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lnou;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmvv;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v10, v4, :cond_9

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    check-cast v6, Lhgc;

    iget-object v6, v6, Lhgc;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lnou;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmvv;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v10, v4, :cond_a

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    move-object v6, v0

    check-cast v6, Lhfx;

    iget-object v6, v6, Lhfx;->k:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v1, Lcnb;->b:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->a:Ljava/lang/Object;

    check-cast v0, Ldvr;

    invoke-virtual {v0, v2}, Ldvr;->h(Lchd;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    check-cast v0, Lcoh;

    iget-object v0, v0, Lcoh;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Lj$/util/StringJoiner;

    const-string v12, " "

    invoke-direct {v8, v12}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v12, "_id"

    invoke-virtual {v8, v12}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_b

    const-string v3, "= ?"

    invoke-virtual {v8, v3}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v7, v10

    goto :goto_5

    :cond_b
    const-string v12, " IN "

    invoke-virtual {v8, v12}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    new-instance v12, Lj$/util/StringJoiner;

    invoke-direct {v12, v6, v5, v4}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v12, v3}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v12}, Lj$/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    :goto_5
    invoke-virtual {v8}, Lj$/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v2

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lcoh;->a:[Ljava/lang/String;

    iget-object v3, v2, Lmqq;->a:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    iget-object v2, v2, Lmqq;->b:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d

    :goto_6
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcok;->a()Lgxs;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgxs;->h(Landroid/net/Uri;)V

    invoke-virtual {v4, v10}, Lgxs;->f(Z)V

    invoke-virtual {v4, v3}, Lgxs;->g(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgxs;->e()Lcok;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_8
    const-class v0, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v5, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    throw v3

    :cond_d
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v2, v1, Lcnb;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcnf;

    iget-object v3, v3, Lcnf;->b:Lcng;

    invoke-virtual {v3}, Lcng;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    new-instance v4, Ldja;

    move-object v5, v0

    check-cast v5, Lcnf;

    iget-object v5, v5, Lcnf;->c:Lkrn;

    check-cast v0, Lcnf;

    iget-object v0, v0, Lcnf;->d:Ljava/util/Random;

    invoke-direct {v4, v3, v5, v0}, Ldja;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lkrn;Ljava/util/Random;)V

    invoke-interface {v2, v4}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    return-object v0

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_10

    :try_start_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    :goto_8
    throw v2

    :pswitch_7
    iget-object v2, v1, Lcnb;->a:Ljava/lang/Object;

    iget-object v8, v1, Lcnb;->b:Ljava/lang/Object;

    check-cast v2, Lcnf;

    iget-object v2, v2, Lcnf;->b:Lcng;

    invoke-virtual {v2}, Lcng;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v15, v11, [Ljava/lang/String;

    new-array v14, v9, [Ljava/lang/String;

    aput-object v0, v14, v10

    new-instance v11, Lj$/util/StringJoiner;

    invoke-direct {v11, v6, v5, v4}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    invoke-virtual {v11, v3}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v15, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_11
    const-string v3, "%s IN %s"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "source_id"

    aput-object v5, v4, v10

    aput-object v11, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    const-string v13, "media_record"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v2

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v4

    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v4}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v3, :cond_13

    :try_start_10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    return-object v0

    :catchall_8
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_15

    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_12
    invoke-static {v4, v3}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_15
    :goto_b
    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_16

    :try_start_13
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v2}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_16
    :goto_c
    throw v3

    :cond_17
    move-object v13, v2

    check-cast v13, Lnwn;

    iget-object v0, v13, Lnwn;->b:Lnws;

    check-cast v0, Loyz;

    iget v2, v0, Loyz;->r:I

    invoke-static {v2}, Lljz;->w(I)I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_d

    :cond_18
    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    :goto_d
    invoke-static {v2}, Lljz;->w(I)I

    move-result v2

    if-nez v2, :cond_19

    goto :goto_e

    :cond_19
    if-ne v2, v7, :cond_1b

    :cond_1a
    iget v0, v0, Loyz;->a:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1b

    sget-object v0, Lnor;->a:Lnou;

    goto :goto_f

    :cond_1b
    :goto_e
    iget-object v0, v12, Lllp;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lllg;

    iget-object v2, v0, Lllg;->b:Lmqp;

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v14

    iget-object v0, v0, Lllg;->a:Lmqp;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v15

    new-array v0, v7, [Lnou;

    aput-object v14, v0, v10

    aput-object v15, v0, v9

    invoke-static {v0}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v0

    new-instance v2, Llsp;

    const/16 v16, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Llsp;-><init>(Lllp;Lnwn;Lnou;Lnou;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v2, v3}, Lnom;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    :goto_f
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
