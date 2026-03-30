.class public final Lah;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lah;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static DggPlhptMqiIBlFz(Landroid/content/Context;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static EpmklhjfRHtGNmqD(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static IqjzBJSmJaIeQrfV(Lde;Ldc;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lde;->f(Ldc;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LLuVUJztPMOmVCxj(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static PsRPLIaqNVVrfZRQ(I)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0}, Lcj;->T(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RgmKKfVhGwhLqYKn(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RgtYOamZAIBeoZAX(Ljava/io/FileInputStream;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WcprfipSENgbkOYx(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static ZUBvnZiSYKbRFKhG(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lah;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    :goto_2
    :try_start_0
    invoke-static {v2}, Lah;->RgtYOamZAIBeoZAX(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_4
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    invoke-static {v2}, Lah;->pqTZSzhaWVUfwMfc(Ljava/io/FileInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :goto_5
    :try_start_2
    throw p0

    nop

    nop

    :catch_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    :catch_2
    :try_start_3
    const-string v3, "AppLocalesStorageHelper"

    nop

    nop

    nop

    nop

    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Lah;->sgOWDgrptgEtfBOG(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    :try_start_4
    const-string v1, ""

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v2, "android.support.v7.app.AppCompatDelegate.application_locales_record_file"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v2}, Lah;->DggPlhptMqiIBlFz(Landroid/content/Context;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    nop

    nop
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lah;->uDcatralQZsTzHbi()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->rIvirzcJBvrDj:Ljava/lang/String;

    nop

    invoke-static {v3, v2, v4}, Lah;->WcprfipSENgbkOYx(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lah;->LLuVUJztPMOmVCxj(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v3}, Lah;->pXDBduATOloVTXXs(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    if-eq v5, v6, :cond_6

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    if-ne v5, v6, :cond_5

    nop

    nop

    nop

    invoke-static {v3}, Lah;->RgmKKfVhGwhLqYKn(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    nop

    if-le v5, v4, :cond_6

    nop

    move v5, v6

    nop

    nop

    :cond_5
    if-eq v5, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    if-eq v5, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lah;->EpmklhjfRHtGNmqD(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    const-string v6, "locales"

    nop

    nop

    invoke-static {v5, v6}, Lah;->hqIYCntKnSCyYiFz(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    const-string v4, "application_locales"

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    invoke-static {v3, v5, v4}, Lah;->kGLRVRanWcVfGGrm(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_2

    nop

    :catch_3
    :goto_12
    :try_start_7
    invoke-static {v1}, Lah;->ckHqwCSGHFonhltM(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    const-string v2, "android.support.v7.app.AppCompatDelegate.application_locales_record_file"

    nop

    nop

    nop

    nop

    invoke-static {p0, v2}, Lah;->ghPbNZrIKQEdorEz(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_7
    monitor-exit v0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method static synthetic b(Lde;Lax;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lah;->bZDaRWUxbOoXyAwG(Ljava/lang/Object;)Ljava/lang/String;

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lah;->PsRPLIaqNVVrfZRQ(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lah;->ZUBvnZiSYKbRFKhG(Ljava/lang/Object;)Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lah;->IqjzBJSmJaIeQrfV(Lde;Ldc;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static bZDaRWUxbOoXyAwG(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static ckHqwCSGHFonhltM(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static ghPbNZrIKQEdorEz(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static hqIYCntKnSCyYiFz(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static kGLRVRanWcVfGGrm(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static pXDBduATOloVTXXs(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pqTZSzhaWVUfwMfc(Ljava/io/FileInputStream;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static sgOWDgrptgEtfBOG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static uDcatralQZsTzHbi()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method
