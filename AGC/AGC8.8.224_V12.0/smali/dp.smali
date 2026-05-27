.class public final Ldp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private static A(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x66

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbey;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbet;->a:Lcvm;

    invoke-virtual {v0, p0}, Lcvm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lbeq;

    const-string v0, "Unknown namespace prefix for qualified name"

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lbeq;

    const-string v0, "Ill-formed qualified name"

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static B(Ljava/lang/String;)V
    .locals 2

    sget v0, Lbey;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lbey;->d(C)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lbey;->c(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lbeq;

    const-string v0, "Bad XML name"

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    return-void
.end method

.method public static a(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b()Landroid/media/MediaDescription$Builder;
    .locals 1

    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    return-object v0
.end method

.method public static c(Landroid/media/MediaDescription$Builder;)Landroid/media/MediaDescription;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/media/MediaDescription;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/media/MediaDescription;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/media/MediaDescription;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static k(Landroid/media/MediaDescription$Builder;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static l(Landroid/media/MediaDescription$Builder;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static m(Landroid/media/MediaDescription$Builder;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static n(Landroid/media/MediaDescription$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static o(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static p(Landroid/media/MediaDescription$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    return-void
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "android.support.v7.app.AppCompatDelegate.application_locales_record_file"

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_2

    const/4 v5, 0x3

    :cond_1
    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "locales"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "application_locales"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    :cond_3
    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_1
    :try_start_3
    const-string v3, "AppLocalesStorageHelper"

    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_5
    return-object v1

    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :cond_6
    :goto_4
    throw p0

    :catch_4
    move-exception p0

    return-object v1
.end method

.method public static synthetic r(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "INVISIBLE"

    return-object p0

    :pswitch_1
    const-string p0, "GONE"

    return-object p0

    :pswitch_2
    const-string p0, "VISIBLE"

    return-object p0

    :pswitch_3
    const-string p0, "REMOVED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static s(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x2

    return p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static t(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ldp;->s(I)I

    move-result p0

    return p0
.end method

.method public static u(ILandroid/view/View;)V
    .locals 2

    add-int/lit8 p0, p0, -0x1

    const-string v0, "SpecialEffectsController: Setting view "

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    invoke-static {v1}, Lcq;->S(I)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to INVISIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcq;->S(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to GONE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcq;->S(I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to VISIBLE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Removing view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic v(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "REMOVING"

    return-object p0

    :pswitch_1
    const-string p0, "ADDING"

    return-object p0

    :pswitch_2
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w()[I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)Lbfm;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    if-eqz v0, :cond_23

    new-instance v3, Lbfm;

    invoke-direct {v3}, Lbfm;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "/[*"

    if-ge v5, v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x66

    if-eqz v5, :cond_22

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Ldp;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lbet;->a:Lcvm;

    invoke-virtual {v9, v8}, Lcvm;->g(Ljava/lang/String;)Lbfk;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/high16 v12, -0x80000000

    const/4 v13, 0x1

    if-nez v9, :cond_1

    new-instance v9, Lbfn;

    invoke-direct {v9, v0, v12}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v9}, Lbfm;->c(Lbfn;)V

    new-instance v0, Lbfn;

    invoke-direct {v0, v8, v13}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lbfm;->c(Lbfn;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    new-instance v0, Lbfn;

    iget-object v8, v9, Lbfk;->a:Ljava/lang/String;

    invoke-direct {v0, v8, v12}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lbfm;->c(Lbfn;)V

    new-instance v0, Lbfn;

    iget-object v8, v9, Lbfk;->a:Ljava/lang/String;

    iget-object v12, v9, Lbfk;->c:Ljava/lang/String;

    invoke-static {v8, v12}, Ldp;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v13}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbfn;->a()V

    iget-object v8, v9, Lbfk;->d:Lbfo;

    iget v8, v8, Lbfq;->a:I

    iput v8, v0, Lbfn;->d:I

    invoke-virtual {v3, v0}, Lbfm;->c(Lbfn;)V

    iget-object v0, v9, Lbfk;->d:Lbfo;

    invoke-virtual {v0}, Lbfo;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v0, Lbfn;

    const-string v8, "[?xml:lang=\'x-default\']"

    invoke-direct {v0, v8, v11}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbfn;->a()V

    iget-object v8, v9, Lbfk;->d:Lbfo;

    iget v8, v8, Lbfq;->a:I

    iput v8, v0, Lbfn;->d:I

    invoke-virtual {v3, v0}, Lbfm;->c(Lbfn;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/16 v8, 0x200

    invoke-virtual {v0, v8}, Lbfq;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbfn;

    const-string v8, "[1]"

    invoke-direct {v0, v8, v10}, Lbfn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lbfn;->a()V

    iget-object v8, v9, Lbfk;->d:Lbfo;

    iget v8, v8, Lbfq;->a:I

    iput v8, v0, Lbfn;->d:I

    invoke-virtual {v3, v0}, Lbfm;->c(Lbfn;)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_21

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x2f

    const-string v14, "Empty XMPPath segment"

    if-ne v9, v12, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lbeq;

    invoke-direct {v0, v14, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x2a

    const/16 v15, 0x5b

    if-ne v9, v12, :cond_7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v15, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Lbeq;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v15, :cond_a

    move v0, v5

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    if-eq v0, v5, :cond_9

    new-instance v8, Lbfn;

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v13}, Lbfn;-><init>(Ljava/lang/String;I)V

    move v12, v0

    goto/16 :goto_c

    :cond_9
    new-instance v0, Lbeq;

    invoke-direct {v0, v14, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    const/4 v11, 0x0

    const/16 v4, 0x5d

    if-lt v14, v15, :cond_d

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v12, 0x39

    if-gt v14, v12, :cond_c

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_b

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v15, :cond_b

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v14, v12, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_b
    new-instance v12, Lbfn;

    invoke-direct {v12, v11, v10}, Lbfn;-><init>(Ljava/lang/String;I)V

    move/from16 v16, v9

    move v9, v8

    move-object v8, v12

    move/from16 v12, v16

    goto/16 :goto_b

    :cond_c
    goto :goto_6

    :cond_d
    :goto_6
    move v12, v9

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_e

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v4, :cond_e

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_e

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_20

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v4, :cond_10

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v14, "[last()"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Lbfn;

    invoke-direct {v9, v11, v2}, Lbfn;-><init>(Ljava/lang/String;I)V

    move-object/from16 v16, v9

    move v9, v8

    move-object/from16 v8, v16

    goto :goto_b

    :cond_f
    new-instance v0, Lbeq;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_10
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v14, 0x27

    if-eq v8, v14, :cond_12

    const/16 v14, 0x22

    if-ne v8, v14, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Lbeq;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    :goto_8
    add-int/lit8 v0, v0, 0x1

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v0, v14, :cond_15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_14

    add-int/lit8 v14, v0, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_15

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v8, :cond_13

    goto :goto_a

    :cond_13
    move v0, v14

    :cond_14
    add-int/2addr v0, v13

    goto :goto_9

    :cond_15
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_1f

    add-int/lit8 v0, v0, 0x1

    new-instance v8, Lbfn;

    const/4 v14, 0x6

    invoke-direct {v8, v11, v14}, Lbfn;-><init>(Ljava/lang/String;I)V

    move/from16 v16, v12

    move v12, v0

    move/from16 v0, v16

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v12, v11, :cond_1e

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v4, :cond_1e

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lbfn;->a:Ljava/lang/String;

    move v5, v9

    :goto_c
    iget v4, v8, Lbfn;->b:I

    const-string v9, "Only xml:lang allowed with \'@\'"

    const/4 v11, 0x2

    const/16 v14, 0x3f

    const/16 v15, 0x40

    if-ne v4, v13, :cond_19

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_17

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "?"

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lbfn;->a:Ljava/lang/String;

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    const-string v10, "?xml:lang"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_d

    :cond_16
    new-instance v0, Lbeq;

    invoke-direct {v0, v9, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    :goto_d
    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_18

    iput v11, v8, Lbfn;->b:I

    add-int/lit8 v5, v5, 0x1

    :cond_18
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldp;->A(Ljava/lang/String;)V

    const/4 v4, 0x5

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    const/4 v10, 0x6

    if-ne v4, v10, :cond_1d

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_1b

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "[?"

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lbfn;->a:Ljava/lang/String;

    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    const-string v10, "[?xml:lang="

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_e

    :cond_1a
    new-instance v0, Lbeq;

    invoke-direct {v0, v9, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1b
    :goto_e
    iget-object v4, v8, Lbfn;->a:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v14, :cond_1c

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x5

    iput v4, v8, Lbfn;->b:I

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldp;->A(Ljava/lang/String;)V

    goto :goto_f

    :cond_1c
    const/4 v4, 0x5

    goto :goto_f

    :cond_1d
    const/4 v4, 0x5

    :goto_f
    invoke-virtual {v3, v8}, Lbfm;->c(Lbfn;)V

    move v8, v5

    move v5, v12

    const/4 v4, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x5

    goto/16 :goto_1

    :cond_1e
    new-instance v0, Lbeq;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1f
    new-instance v0, Lbeq;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    new-instance v0, Lbeq;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_21
    return-object v3

    :cond_22
    new-instance v0, Lbeq;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v6}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_23
    new-instance v0, Lbeq;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method public static y(Lbff;Ljava/io/OutputStream;Lbft;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    const/16 v1, 0x1000

    invoke-virtual {v10, v1}, Lbfq;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->r()V

    :cond_0
    sget v1, Lbfl;->b:I

    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Lbew;

    move-object/from16 v1, p1

    invoke-direct {v12, v1}, Lbew;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p2 .. p2}, Lbft;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v1, v10, Lbft;->b:I

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p2 .. p2}, Lbft;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v12, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lbft;->c()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lbft;->d()Z

    move-result v3

    or-int/2addr v2, v3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v15, v2, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lbft;->i()Z

    move-result v2

    const/16 v3, 0x67

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lbft;->k()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lbft;->j()Z

    move-result v4

    or-int/2addr v2, v4

    if-nez v2, :cond_4

    iget v2, v10, Lbft;->b:I

    add-int/lit8 v4, v9, -0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_3

    :cond_2
    move v8, v1

    goto :goto_2

    :cond_3
    new-instance v0, Lbeq;

    const-string v1, "Exact size must be a multiple of the Unicode element"

    invoke-direct {v0, v1, v3}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    new-instance v0, Lbeq;

    const-string v1, "Inconsistent options for exact size serialize"

    invoke-direct {v0, v1, v3}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lbft;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lbft;->k()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lbft;->j()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez v1, :cond_6

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    new-instance v0, Lbeq;

    const-string v1, "Inconsistent options for read-only packet"

    invoke-direct {v0, v1, v3}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lbft;->k()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lbft;->j()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    new-instance v0, Lbeq;

    const-string v1, "Inconsistent options for non-packet serialize"

    invoke-direct {v0, v1, v3}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    if-nez v1, :cond_a

    mul-int/lit16 v1, v9, 0x800

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lbft;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Thumbnails"

    invoke-virtual {v0, v2, v3}, Lbff;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    mul-int/lit16 v2, v9, 0x2710

    add-int/2addr v1, v2

    move v8, v1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lbft;->k()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v11, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v1, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    :cond_b
    invoke-static {v11, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v1, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {}, Lbet;->c()V

    const-string v1, "Adobe XMP Core 5.1.0-jc003"

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v1, "\">"

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    invoke-static {v15, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v1, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/16 v1, 0x40

    invoke-virtual {v10, v1}, Lbfq;->h(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "</rdf:Description>"

    const/16 v6, 0x3e

    const-string v5, "rdf"

    const-string v4, "/>"

    const-string v3, "xml"

    const-string v2, "<rdf:Description rdf:about="

    if-eqz v1, :cond_10

    :try_start_1
    invoke-static {v14, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v11, v3

    move-object v3, v13

    move-object v15, v4

    move-object/from16 v4, p2

    move-object v14, v5

    move v5, v9

    move-object/from16 v16, v15

    const/16 v15, 0x3e

    move v6, v8

    invoke-static/range {v1 .. v6}, Lbfl;->c(Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    move-object v2, v6

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v13

    move-object v14, v6

    move-object/from16 v6, p2

    move-object/from16 v17, v7

    move v7, v9

    move/from16 v18, v8

    invoke-static/range {v1 .. v8}, Lbfl;->e(Lbfi;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    move-object v6, v14

    move-object/from16 v7, v17

    move/from16 v8, v18

    goto :goto_3

    :cond_c
    move-object/from16 v17, v7

    move/from16 v18, v8

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v11

    const/4 v14, 0x1

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    const/4 v2, 0x3

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p2

    move v7, v9

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lbfl;->d(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)Z

    move-result v1

    and-int/2addr v14, v1

    goto :goto_4

    :cond_d
    if-nez v14, :cond_f

    invoke-virtual {v13, v15}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    const/4 v2, 0x3

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p2

    move v7, v9

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lbfl;->a(Lbfi;ILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    goto :goto_5

    :cond_e
    const/4 v0, 0x2

    invoke-static {v0, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    move-object/from16 v8, v17

    invoke-virtual {v13, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    move/from16 v21, v9

    goto/16 :goto_8

    :cond_f
    move-object/from16 v7, v16

    invoke-virtual {v13, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    move/from16 v21, v9

    goto/16 :goto_8

    :cond_10
    move-object v11, v3

    move-object v14, v5

    move/from16 v18, v8

    const/16 v15, 0x3e

    move-object v8, v7

    move-object v7, v4

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->a()I

    move-result v1

    if-lez v1, :cond_13

    iget-object v1, v0, Lbff;->a:Lbfi;

    invoke-virtual {v1}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lbfi;

    const/4 v1, 0x2

    invoke-static {v1, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v7, v2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p2

    move v5, v9

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lbfl;->c(Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v3, p0

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p2

    move-object/from16 v19, v7

    move v7, v9

    move-object/from16 v20, v8

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lbfl;->e(Lbfi;Ljava/util/Set;Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-virtual {v13, v15}, Ljava/io/OutputStreamWriter;->write(I)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    invoke-virtual/range {v17 .. v17}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v4, p0

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, p2

    move v8, v9

    move/from16 v21, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lbfl;->b(Lbfi;ZILbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    move/from16 v9, v21

    goto :goto_7

    :cond_11
    move/from16 v21, v9

    const/4 v1, 0x2

    invoke-static {v1, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    move-object/from16 v1, v20

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    move-object v8, v1

    move-object/from16 v2, v19

    move/from16 v9, v21

    goto :goto_6

    :cond_12
    move/from16 v21, v9

    goto :goto_8

    :cond_13
    move-object/from16 v19, v2

    move/from16 v21, v9

    const/4 v1, 0x2

    invoke-static {v1, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    move-object/from16 v1, v19

    invoke-virtual {v13, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, v21

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lbfl;->c(Lbff;Lbew;Ljava/io/OutputStreamWriter;Lbft;II)V

    invoke-virtual {v13, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    :goto_8
    const/4 v0, 0x1

    invoke-static {v0, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v0, "</rdf:RDF>"

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const/4 v1, 0x0

    invoke-static {v1, v13, v10}, Lbfl;->g(ILjava/io/OutputStreamWriter;Lbft;)V

    const-string v0, "</x:xmpmeta>"

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    const-string v0, ""

    invoke-virtual/range {p2 .. p2}, Lbft;->k()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "<?xpacket end=\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lbft;->l()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_14

    const/16 v1, 0x77

    goto :goto_9

    :cond_14
    const/16 v1, 0x72

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lbft;->i()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v12, Lbew;->a:I

    mul-int v1, v1, v21

    add-int/2addr v2, v1

    move/from16 v1, v18

    if-gt v2, v1, :cond_16

    sub-int v8, v1, v2

    goto :goto_a

    :cond_16
    new-instance v0, Lbeq;

    const-string v1, "Can\'t fit into specified packet size"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    move/from16 v1, v18

    move v8, v1

    :goto_a
    div-int v8, v8, v21

    iget-object v1, v10, Lbft;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v8, v1, :cond_19

    sub-int/2addr v8, v1

    :goto_b
    const/16 v2, 0x64

    add-int/lit8 v3, v1, 0x64

    if-lt v8, v3, :cond_18

    invoke-static {v2, v13}, Lbfl;->f(ILjava/io/OutputStreamWriter;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    sub-int/2addr v8, v3

    goto :goto_b

    :cond_18
    invoke-static {v8, v13}, Lbfl;->f(ILjava/io/OutputStreamWriter;)V

    invoke-static {v13, v10}, Lbfl;->h(Ljava/io/OutputStreamWriter;Lbft;)V

    goto :goto_c

    :cond_19
    invoke-static {v8, v13}, Lbfl;->f(ILjava/io/OutputStreamWriter;)V

    :goto_c
    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v12}, Lbew;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lbeq;

    const-string v1, "Error writing to the OutputStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbeq;-><init>(Ljava/lang/String;I)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method private static z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x65

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    sget-object v2, Lbet;->a:Lcvm;

    invoke-virtual {v2, p0}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {p1}, Ldp;->B(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldp;->B(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldp;->B(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lbet;->a:Lcvm;

    invoke-virtual {v2, p0}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lbeq;

    const-string p1, "Schema namespace URI and prefix mismatch"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lbeq;

    const-string p1, "Unknown schema namespace prefix"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lbeq;

    const-string p1, "Unregistered schema namespace URI"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lbeq;

    const-string p1, "Top level name must be simple"

    invoke-direct {p0, p1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lbeq;

    const-string p1, "Top level name must not be a qualifier"

    invoke-direct {p0, p1, v4}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lbeq;

    const-string p1, "Schema namespace URI is required"

    invoke-direct {p0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
