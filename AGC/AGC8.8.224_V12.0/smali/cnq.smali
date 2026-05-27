.class public final synthetic Lcnq;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(J[BI)V
    .locals 0

    iput p4, p0, Lcnq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcnq;->a:J

    iput-object p3, p0, Lcnq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcns;JI)V
    .locals 0

    iput p4, p0, Lcnq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnq;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lcnq;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    iput p4, p0, Lcnq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnq;->b:Ljava/lang/Object;

    iput-wide p2, p0, Lcnq;->a:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lcnq;->c:I

    const/4 v1, 0x0

    const-string v2, "time"

    const-string v3, "session_id"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcnq;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcnq;->a:J

    check-cast p1, Ldja;

    check-cast v0, Lcns;

    iget-object v0, v0, Lcns;->b:Lcnf;

    iget-object v0, v0, Lcnf;->g:Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-wide v5, p0, Lcnq;->a:J

    iget-object v0, p0, Lcnq;->b:Ljava/lang/Object;

    check-cast p1, Ldja;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, p1, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v7}, Lkrn;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    check-cast v0, [B

    const-string v2, "value"

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p1, Ldja;->c:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session_id = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/String;

    move-object v7, v0

    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "session"

    const/4 v12, 0x5

    invoke-virtual/range {v7 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    const-string v0, "session"

    invoke-virtual {p1, v0, v3}, Ldja;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :pswitch_1
    iget-object v0, p0, Lcnq;->b:Ljava/lang/Object;

    iget-wide v5, p0, Lcnq;->a:J

    check-cast p1, Ldja;

    const/4 v1, 0x1

    const-string v7, "sourceId should be a String."

    invoke-static {v1, v7}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p1, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v3}, Lkrn;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p1, Ldja;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, "selection_key"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    check-cast v0, Ljava/lang/String;

    const-string v1, "source_id"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_record"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-string v0, "media_id"

    invoke-virtual {p1, v1, v0}, Ldja;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v6}, Lkrn;->a()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time IS NOT NULL AND time < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Ldja;->c:Ljava/lang/Object;

    new-array v10, v1, [Ljava/lang/String;

    check-cast v9, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v5, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
