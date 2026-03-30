.class public final Lfko;
.super Lfkk;
.source "PG"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-string v1, "com.android.contacts"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "contacts/#/display_photo"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v2, "phone_lookup/*"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    const-string v2, "contacts/#"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lfko;->a:Landroid/content/UriMatcher;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    new-instance v0, Landroid/content/UriMatcher;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    :goto_14
    const-string v2, "contacts/lookup/*"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, "contacts/lookup/*/#"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v2, "contacts/#/photo"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lfkk;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method private static final e(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-class p0, Ljava/io/InputStream;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final bridge synthetic b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-static {p2, p0}, Lfko;->e(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p2, "InputStream is null for "

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "Contact cannot be found"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lfko;->a:Landroid/content/UriMatcher;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/io/FileNotFoundException;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, p1}, Lfko;->e(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    if-ne p0, v0, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method protected final synthetic c(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
