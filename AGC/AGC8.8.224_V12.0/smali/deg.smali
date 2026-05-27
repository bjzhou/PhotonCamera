.class public final Ldeg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;

.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lddk;

.field public final e:Lkrf;

.field public final f:Ldeu;

.field public final g:Ldhi;

.field public h:I

.field public i:I

.field public final j:Lmrl;

.field public k:Loxq;

.field private final l:Llpu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/cameravisionkit/CameraVisionKitResultsConverter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldeg;->a:Lnak;

    const-string v0, "^([0-9]+)\\.([0-9]+)\\.([0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldeg;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llpu;Lddk;Lkrf;Ldeu;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldeg;->c:Landroid/content/Context;

    iput-object p2, p0, Ldeg;->l:Llpu;

    iput-object p3, p0, Ldeg;->d:Lddk;

    iput-object p4, p0, Ldeg;->e:Lkrf;

    iput-object p5, p0, Ldeg;->f:Ldeu;

    iput-object p6, p0, Ldeg;->g:Ldhi;

    new-instance p2, Ldkg;

    const/4 p3, 0x1

    invoke-direct {p2, p6, p1, p3}, Ldkg;-><init>(Ldhi;Landroid/content/Context;I)V

    invoke-static {p2}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Ldeg;->j:Lmrl;

    return-void
.end method

.method static b(Lluc;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lluc;->c()Llud;

    move-result-object v0

    iget-object v0, v0, Llud;->b:Lmqp;

    invoke-virtual {p0}, Lluc;->c()Llud;

    move-result-object v1

    iget-object v1, v1, Llud;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ldeg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ldeg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lluc;->a()Lltv;

    move-result-object v2

    sget-object v3, Lltv;->d:Lltv;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Ldeg;->d(Lluc;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lluc;->a()Lltv;

    move-result-object p0

    sget-object p1, Lltv;->k:Lltv;

    if-ne p0, p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lmpx;->a:Lmpx;

    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ldev;->a(Ljava/net/URI;)Lmqp;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    invoke-virtual {p0}, Lmqp;->g()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Ldeg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u2026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static d(Lluc;)Z
    .locals 2

    invoke-virtual {p0}, Lluc;->a()Lltv;

    move-result-object v0

    sget-object v1, Lltv;->k:Lltv;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lluc;->c()Llud;

    move-result-object p0

    iget-object p0, p0, Llud;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "fido:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final e(Lltv;)Z
    .locals 0

    invoke-virtual {p0}, Lltv;->ordinal()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Lluc;J)Lddo;
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Ldeg;->f:Ldeu;

    invoke-virtual/range {p1 .. p1}, Lluc;->a()Lltv;

    move-result-object v0

    sget-object v3, Lltv;->u:Lltv;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v3, :cond_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    move-object v6, v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v6, v0

    :goto_0
    sget-object v0, Ldeu;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Ldeu;->c:Landroid/content/Context;

    const v3, 0x7f1402a6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcue;

    const/16 v3, 0x14

    invoke-direct {v7, v2, v6, v3}, Lcue;-><init>(Ldeu;Ljava/lang/String;I)V

    iget-object v3, v2, Ldeu;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801bf

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v8

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Ldeu;->c(Lluc;JLjava/lang/String;Ljava/lang/Runnable;Lj$/util/Optional;)Lddo;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    if-eqz v6, :cond_5

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, v2, Ldeu;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Ldeu;->b:Lmrl;

    invoke-interface {v3}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    new-instance v7, Ldgd;

    invoke-direct {v7, v2, v6, v10}, Ldgd;-><init>(Ldeu;Ljava/lang/String;I)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, v2, Ldeu;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    move-object v8, v0

    :goto_2
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Ldeu;->c(Lluc;JLjava/lang/String;Ljava/lang/Runnable;Lj$/util/Optional;)Lddo;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddo;

    return-object v0

    :cond_6
    invoke-static {}, Lddo;->a()Lddn;

    move-result-object v2

    iget-object v0, v1, Ldeg;->c:Landroid/content/Context;

    const v3, 0x7f14044f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Ldeg;->c:Landroid/content/Context;

    const v4, 0x7f1401a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-static {v4, v0, v3}, Ldeg;->b(Lluc;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lddn;->a:Ljava/lang/String;

    sget-object v0, Lkuh;->a:Lmwa;

    invoke-virtual/range {p1 .. p1}, Lluc;->a()Lltv;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuu;

    if-eqz v0, :cond_4e

    new-instance v3, Lkui;

    invoke-direct {v3, v9}, Lkui;-><init>([B)V

    sget-object v5, Lkuj;->d:Lkuj;

    invoke-virtual {v3, v5}, Lkui;->a(Lkuj;)V

    iput-object v0, v3, Lkui;->a:Ljava/lang/Object;

    sget-object v0, Lkuh;->b:Lmwa;

    invoke-virtual/range {p1 .. p1}, Lluc;->b()Llub;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuj;

    invoke-virtual {v3, v0}, Lkui;->a(Lkuj;)V

    invoke-virtual/range {p1 .. p1}, Lluc;->c()Llud;

    move-result-object v0

    iget-object v0, v0, Llud;->a:Ljava/lang/String;

    iput-object v0, v3, Lkui;->c:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lluc;->c()Llud;

    move-result-object v0

    iget-object v0, v0, Llud;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lluc;->c()Llud;

    move-result-object v0

    iget-object v0, v0, Llud;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->d:Ljava/lang/Object;

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lluc;->g()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lluc;->g()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    sget-object v5, Lkwh;->h:Lkwh;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->summary:Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_8
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwh;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->description:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_9
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwh;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->location:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_a
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwh;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->organizer:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_b
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwh;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->status:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_c
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Lkwh;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->start:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    invoke-static {v6}, Lkuh;->a(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lkwg;

    move-result-object v6

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_d
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Lkwh;->f:Lkwg;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;->end:Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;

    invoke-static {v0}, Lkuh;->a(Lcom/google/android/libraries/barhopper/Barcode$CalendarDateTime;)Lkwg;

    move-result-object v0

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_e
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lkwh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Lkwh;->g:Lkwg;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->e:Ljava/lang/Object;

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lluc;->e()Lmqp;

    invoke-virtual/range {p1 .. p1}, Lluc;->f()Lmqp;

    invoke-virtual/range {p1 .. p1}, Lluc;->i()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Lluc;->i()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llty;

    sget-object v5, Lkwi;->h:Lkwi;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v0, Llty;->a:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Llty;->a:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_10
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iput-object v6, v7, Lkwi;->a:Ljava/lang/String;

    :cond_11
    iget-object v6, v0, Llty;->d:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v0, Llty;->d:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_12
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iput-object v6, v7, Lkwi;->d:Ljava/lang/String;

    :cond_13
    iget-object v6, v0, Llty;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Llty;->f:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_14
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iput-object v6, v7, Lkwi;->f:Ljava/lang/String;

    :cond_15
    iget-object v6, v0, Llty;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Llty;->e:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_16
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iput-object v6, v7, Lkwi;->e:Ljava/lang/String;

    :cond_17
    iget-object v6, v0, Llty;->b:Lmvv;

    invoke-virtual {v6}, Lmvv;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, v0, Llty;->b:Lmvv;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_18
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iget-object v8, v7, Lkwi;->b:Lnxa;

    invoke-interface {v8}, Lnxa;->c()Z

    move-result v11

    if-nez v11, :cond_19

    invoke-static {v8}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v8

    iput-object v8, v7, Lkwi;->b:Lnxa;

    :cond_19
    iget-object v7, v7, Lkwi;->b:Lnxa;

    invoke-static {v6, v7}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_1a
    iget-object v6, v0, Llty;->c:Lmvv;

    invoke-virtual {v6}, Lmvv;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, v0, Llty;->c:Lmvv;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_1b

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1b
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwi;

    iget-object v8, v7, Lkwi;->c:Lnxa;

    invoke-interface {v8}, Lnxa;->c()Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-static {v8}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v8

    iput-object v8, v7, Lkwi;->c:Lnxa;

    :cond_1c
    iget-object v7, v7, Lkwi;->c:Lnxa;

    invoke-static {v6, v7}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_1d
    iget-object v6, v0, Llty;->g:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v0, v0, Llty;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, v5, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_1e
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lkwi;

    iput-object v0, v6, Lkwi;->g:Ljava/lang/String;

    :cond_1f
    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwi;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->h:Ljava/lang/Object;

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lluc;->m()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Lluc;->m()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;

    sget-object v5, Lkwj;->c:Lkwj;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lat:D

    iget-object v8, v5, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_21
    iget-object v8, v5, Lnwn;->b:Lnws;

    move-object v11, v8

    check-cast v11, Lkwj;

    iput-wide v6, v11, Lkwj;->a:D

    iget-wide v6, v0, Lcom/google/android/libraries/barhopper/Barcode$GeoPoint;->lng:D

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_22
    iget-object v0, v5, Lnwn;->b:Lnws;

    check-cast v0, Lkwj;

    iput-wide v6, v0, Lkwj;->b:D

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwj;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->i:Ljava/lang/Object;

    :cond_23
    invoke-virtual/range {p1 .. p1}, Lluc;->t()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lluc;->t()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;

    sget-object v5, Lkwl;->c:Lkwl;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;->message:Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_24
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwl;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/libraries/barhopper/Barcode$Sms;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_25
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lkwl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v6, Lkwl;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwl;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->j:Ljava/lang/Object;

    :cond_26
    invoke-virtual/range {p1 .. p1}, Lluc;->x()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lluc;->x()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;

    sget-object v5, Lkwn;->e:Lkwn;

    invoke-virtual {v5}, Lnws;->O()Lnwn;

    move-result-object v5

    iget v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->encryptionType:I

    invoke-static {v6}, Lkwm;->b(I)Lkwm;

    move-result-object v6

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_27

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_27
    iget-object v7, v5, Lnwn;->b:Lnws;

    check-cast v7, Lkwn;

    invoke-virtual {v6}, Lkwm;->a()I

    move-result v6

    iput v6, v7, Lkwn;->b:I

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->ssid:Ljava/lang/String;

    iget-object v7, v5, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_28
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwn;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwn;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->password:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_29
    iget-object v7, v5, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lkwn;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lkwn;->c:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/google/android/libraries/barhopper/Barcode$WiFi;->isHidden:Z

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Lnwn;->p()V

    :cond_2a
    iget-object v6, v5, Lnwn;->b:Lnws;

    check-cast v6, Lkwn;

    iput-boolean v0, v6, Lkwn;->d:Z

    invoke-virtual {v5}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lkwn;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v3, Lkui;->k:Ljava/lang/Object;

    :cond_2b
    iget-object v0, v3, Lkui;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4a

    iget-object v5, v3, Lkui;->b:Ljava/lang/Object;

    if-eqz v5, :cond_4a

    iget-object v6, v3, Lkui;->c:Ljava/lang/Object;

    if-nez v6, :cond_2c

    goto/16 :goto_14

    :cond_2c
    new-instance v7, Lkuk;

    iget-object v8, v3, Lkui;->d:Ljava/lang/Object;

    iget-object v11, v3, Lkui;->e:Ljava/lang/Object;

    iget-object v12, v3, Lkui;->f:Ljava/lang/Object;

    iget-object v13, v3, Lkui;->g:Ljava/lang/Object;

    iget-object v14, v3, Lkui;->h:Ljava/lang/Object;

    iget-object v15, v3, Lkui;->i:Ljava/lang/Object;

    iget-object v10, v3, Lkui;->j:Ljava/lang/Object;

    iget-object v3, v3, Lkui;->k:Ljava/lang/Object;

    move-object/from16 v22, v3

    check-cast v22, Lmqp;

    move-object/from16 v21, v10

    check-cast v21, Lmqp;

    move-object/from16 v20, v15

    check-cast v20, Lmqp;

    move-object/from16 v19, v14

    check-cast v19, Lmqp;

    move-object/from16 v18, v13

    check-cast v18, Lmqp;

    move-object/from16 v17, v12

    check-cast v17, Lmqp;

    move-object/from16 v16, v11

    check-cast v16, Lmqp;

    move-object v15, v8

    check-cast v15, Lmqp;

    move-object v14, v6

    check-cast v14, Ljava/lang/String;

    move-object v13, v5

    check-cast v13, Lkuj;

    move-object v12, v0

    check-cast v12, Lkuu;

    move-object v11, v7

    invoke-direct/range {v11 .. v22}, Lkuk;-><init>(Lkuu;Lkuj;Ljava/lang/String;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;)V

    iget-object v0, v1, Ldeg;->l:Llpu;

    iget v3, v0, Llpu;->a:I

    new-instance v3, Lloi;

    iget-object v5, v0, Llpu;->b:Ljava/lang/Object;

    iget-object v6, v0, Llpu;->c:Ljava/lang/Object;

    check-cast v6, Ldne;

    check-cast v5, Landroid/content/Context;

    invoke-direct {v3, v5, v6, v9}, Lloi;-><init>(Landroid/content/Context;Ldne;[B)V

    iget-object v5, v7, Lkuk;->a:Lkuu;

    invoke-virtual {v5}, Lkuu;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, v7, Lkuk;->a:Lkuu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unsupported action "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v5, v7, Lkuk;->j:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v0, Llpu;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    const-class v10, Landroid/net/wifi/WifiManager;

    invoke-static {v5, v10}, Labu;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/net/wifi/WifiManager;

    iget-object v10, v0, Llpu;->c:Ljava/lang/Object;

    iget-object v0, v7, Lkuk;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkwn;

    if-nez v11, :cond_2d

    new-instance v0, Lkup;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v3, v5, v8

    check-cast v10, Ldne;

    const v3, 0x7f140453

    invoke-direct {v0, v10, v3, v5, v9}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :cond_2d
    const-string v0, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {v5, v0}, Labx;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lkup;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v3, v5, v8

    check-cast v10, Ldne;

    const v3, 0x7f140452

    invoke-direct {v0, v10, v3, v5, v9}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :cond_2e
    sget-object v0, Lkwm;->a:Lkwm;

    iget v0, v12, Lkwn;->b:I

    invoke-static {v0}, Lkwm;->b(I)Lkwm;

    move-result-object v0

    if-nez v0, :cond_2f

    sget-object v0, Lkwm;->e:Lkwm;

    :cond_2f
    invoke-virtual {v0}, Lkwm;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sget-object v0, Llug;->a:Llug;

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/Object;

    iget v5, v12, Lkwn;->b:I

    invoke-static {v5}, Lkwm;->b(I)Lkwm;

    move-result-object v5

    if-nez v5, :cond_30

    sget-object v5, Lkwm;->e:Lkwm;

    goto :goto_4

    :pswitch_1
    sget-object v0, Lltp;->b:Lltp;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_5

    :pswitch_2
    sget-object v0, Lltp;->c:Lltp;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_5

    :pswitch_3
    sget-object v0, Lltp;->a:Lltp;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_5

    :cond_30
    :goto_4
    aput-object v5, v13, v8

    const-class v5, Lkuv;

    const-string v14, "Unexpected WifiInt: %s"

    invoke-virtual {v0, v5, v14, v13}, Llug;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lmpx;->a:Lmpx;

    :goto_5
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v5

    const v13, 0x7f140451

    if-nez v5, :cond_31

    new-instance v0, Lkup;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v3, v5, v8

    check-cast v10, Ldne;

    invoke-direct {v0, v10, v13, v5, v9}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :cond_31
    :try_start_1
    new-instance v5, Lltr;

    invoke-direct {v5}, Lltr;-><init>()V

    iget-object v14, v12, Lkwn;->a:Ljava/lang/String;

    invoke-static {v14}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lltr;->a:Ljava/lang/String;

    iget-object v14, v12, Lkwn;->c:Ljava/lang/String;

    invoke-static {v14}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lltr;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lltp;

    iput-object v0, v5, Lltr;->c:Lltp;

    iget-boolean v0, v12, Lkwn;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v5, Lltr;->d:Ljava/lang/Boolean;

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v14, v5, Lltr;->a:Ljava/lang/String;

    const/16 v15, 0x20

    const/4 v13, 0x1

    invoke-static {v14, v13, v15}, Lltr;->c(Ljava/lang/String;II)Z

    move-result v15

    if-eqz v15, :cond_38

    invoke-static {v14}, Lltr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v13, v5, Lltr;->c:Lltp;

    invoke-virtual {v13}, Lltp;->ordinal()I

    move-result v13

    const/4 v15, 0x3

    packed-switch v13, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_4
    iget-object v13, v5, Lltr;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_35

    const/16 v9, 0x8

    const/16 v14, 0x3f

    invoke-static {v13, v9, v14}, Lltr;->c(Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-static {v13}, Lltr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_32
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v14, 0x40

    if-ne v9, v14, :cond_34

    invoke-static {v13}, Lltr;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    :goto_6
    iput-object v13, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v15}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_9

    :cond_33
    const-string v0, "WPA PSK %s is 64 chars, which means it must be hex; but it was not"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v13, v5, v8

    const/4 v3, 0x4

    invoke-static {v3, v0, v5}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :cond_34
    const-string v0, "WPA PSK %s has an invalid length. %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v13, v3, v8

    const-string v5, "WPA PSKs must be 8-63 ASCII characters, or exactly 64 hex characters"

    const/4 v9, 0x1

    aput-object v5, v3, v9

    const/4 v5, 0x4

    invoke-static {v5, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :cond_35
    const-string v0, "No WPA PSK was specified"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v15, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :pswitch_5
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v13, v5, Lltr;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14
    :try_end_1
    .catch Lltq; {:try_start_1 .. :try_end_1} :catch_1

    const-string v19, "WEP passwords must be 5, 13, 16, or 29 ASCII characters, or 10, 26, 32, or 58 hex characters."

    sparse-switch v14, :sswitch_data_0

    :try_start_2
    const-string v0, "Invalid WEP password %s. %s"

    goto :goto_8

    :sswitch_0
    invoke-static {v13}, Lltr;->b(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_36

    goto :goto_7

    :cond_36
    const-string v0, "WEP password %s is not a hex string, but has a length such that it must be one. %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v13, v3, v8

    const/4 v5, 0x1

    aput-object v19, v3, v5

    const/4 v5, 0x4

    invoke-static {v5, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :sswitch_1
    invoke-static {v13}, Lltr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_7
    aput-object v13, v9, v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_9

    :sswitch_2
    const-string v0, "No WEP password was specified"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v15, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :goto_8
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v13, v3, v8

    const/4 v5, 0x1

    aput-object v19, v3, v5

    const/4 v5, 0x4

    invoke-static {v5, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :pswitch_6
    iget-object v9, v5, Lltr;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_37

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->clear()V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v15}, Ljava/util/BitSet;->set(I)V

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_37
    const-string v0, "Open WiFi network should not have a password specified"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v6, v0, v3}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0

    :goto_9
    iget-object v5, v5, Lltr;->d:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_2
    .catch Lltq; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v5, Lkuv;

    move-object v12, v10

    check-cast v12, Ldne;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v5

    move-object v13, v0

    move-object v14, v3

    invoke-direct/range {v10 .. v16}, Lkuv;-><init>(Landroid/net/wifi/WifiManager;Ldne;Landroid/net/wifi/WifiConfiguration;Lloi;[B[B)V

    move-object v0, v5

    goto/16 :goto_b

    :cond_38
    :try_start_3
    const-string v0, "SSID must have a length of 1-32 chars. SSID is: %s"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v14, v5, v8

    invoke-static {v3, v0, v5}, Lltq;->a(ILjava/lang/String;[Ljava/lang/Object;)Lltq;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lltq; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    sget-object v3, Llug;->a:Llug;

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v8

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Llug;->e(I)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v5, v3, Llug;->b:Ljava/lang/String;

    const-string v11, "QR code contained invalid wifi. Details: %s"

    invoke-virtual {v3, v11, v9}, Llug;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    iget v3, v0, Lltq;->a:I

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_3a

    packed-switch v5, :pswitch_data_3

    const/4 v3, 0x1

    sget-object v5, Llug;->a:Llug;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v0, v9, v8

    const-class v0, Lkuv;

    const-string v11, "Unhandled WifiConfigurationBuilder exception %s"

    invoke-virtual {v5, v0, v11, v9}, Llug;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lkup;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v3, v5, v8

    check-cast v10, Ldne;

    const v3, 0x7f140451

    const/4 v9, 0x0

    invoke-direct {v0, v10, v3, v5, v9}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :pswitch_7
    new-instance v0, Lkup;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v9, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v9, v5, v8

    check-cast v10, Ldne;

    const v9, 0x7f140454

    const/4 v11, 0x0

    invoke-direct {v0, v10, v9, v5, v11}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :pswitch_8
    const/4 v3, 0x1

    const/4 v11, 0x0

    new-instance v0, Lkup;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v9, v12, Lkwn;->a:Ljava/lang/String;

    aput-object v9, v5, v8

    check-cast v10, Ldne;

    const v9, 0x7f140455

    invoke-direct {v0, v10, v9, v5, v11}, Lkup;-><init>(Ldne;I[Ljava/lang/Object;[B)V

    goto/16 :goto_b

    :cond_3a
    const/4 v9, 0x0

    throw v9

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Wifi actions must have wifi network data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v5, Lkut;

    iget-object v0, v0, Llpu;->b:Ljava/lang/Object;

    iget-object v13, v7, Lkuk;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v10 .. v17}, Lkut;-><init>(Lloi;Landroid/content/Context;Ljava/lang/String;Ljava/util/Locale;I[B[B)V

    move-object v0, v5

    goto/16 :goto_b

    :pswitch_a
    new-instance v5, Lkut;

    iget-object v0, v0, Llpu;->b:Ljava/lang/Object;

    iget-object v13, v7, Lkuk;->i:Lmqp;

    move-object v12, v0

    check-cast v12, Landroid/content/Context;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v10 .. v16}, Lkut;-><init>(Lloi;Landroid/content/Context;Lmqp;I[B[B)V

    move-object v0, v5

    goto/16 :goto_b

    :pswitch_b
    new-instance v0, Lkuo;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v16}, Lkuo;-><init>(Lloi;Ljava/lang/String;I[B[B[B)V

    goto/16 :goto_b

    :pswitch_c
    new-instance v0, Lkuo;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lkuo;-><init>(Lloi;Ljava/lang/String;I[B[B)V

    goto/16 :goto_b

    :pswitch_d
    new-instance v0, Lkuo;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lkuo;-><init>(Lloi;Ljava/lang/String;I[B[B)V

    goto/16 :goto_b

    :pswitch_e
    new-instance v0, Lkur;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    iget-object v13, v7, Lkuk;->h:Lmqp;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lkur;-><init>(Lloi;Ljava/lang/String;Lmqp;[B[B)V

    goto :goto_b

    :pswitch_f
    new-instance v0, Lkuo;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lkuo;-><init>(Lloi;Ljava/lang/String;I[B[B)V

    goto :goto_b

    :pswitch_10
    new-instance v3, Lkun;

    iget-object v5, v0, Llpu;->b:Ljava/lang/Object;

    iget-object v0, v0, Llpu;->c:Ljava/lang/Object;

    iget-object v9, v7, Lkuk;->c:Ljava/lang/String;

    check-cast v0, Ldne;

    check-cast v5, Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v3, v5, v0, v9, v10}, Lkun;-><init>(Landroid/content/Context;Ldne;Ljava/lang/String;[B)V

    move-object v0, v3

    goto :goto_b

    :pswitch_11
    new-instance v5, Lkum;

    iget-object v9, v0, Llpu;->c:Ljava/lang/Object;

    iget-object v13, v7, Lkuk;->g:Lmqp;

    iget-object v14, v7, Lkuk;->c:Ljava/lang/String;

    iget-object v0, v0, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v10, 0x7f140241

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v12, v9

    check-cast v12, Ldne;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v10 .. v17}, Lkum;-><init>(Lloi;Ldne;Lmqp;Ljava/lang/String;Ljava/lang/String;[B[B)V

    goto :goto_a

    :pswitch_12
    new-instance v0, Lkuo;

    iget-object v12, v7, Lkuk;->c:Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move-object v11, v3

    invoke-direct/range {v10 .. v15}, Lkuo;-><init>(Lloi;Ljava/lang/String;I[B[B)V

    goto :goto_b

    :pswitch_13
    new-instance v5, Lkul;

    iget-object v0, v0, Llpu;->b:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v5

    move-object v12, v3

    move-object v13, v7

    invoke-direct/range {v11 .. v16}, Lkul;-><init>(Lloi;Lkuk;Landroid/content/Context;[B[B)V

    :goto_a
    move-object v0, v5

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lluc;->a()Lltv;

    move-result-object v3

    invoke-static {v3}, Ldeg;->e(Lltv;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    iput v3, v2, Lddn;->e:I

    goto :goto_c

    :cond_3c
    const/4 v3, 0x1

    iput v6, v2, Lddn;->e:I

    new-instance v5, Lczl;

    const/16 v9, 0x13

    invoke-direct {v5, v0, v9}, Lczl;-><init>(Lkus;I)V

    iput-object v5, v2, Lddn;->b:Ljava/lang/Runnable;

    :goto_c
    invoke-static/range {p1 .. p1}, Ldeg;->d(Lluc;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v0, v1, Ldeg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0801ba

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lddn;->c:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_12

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lluc;->a()Lltv;

    move-result-object v5

    invoke-static {v5}, Ldeg;->e(Lltv;)Z

    move-result v5

    if-nez v5, :cond_47

    iget-object v5, v1, Ldeg;->l:Llpu;

    instance-of v9, v0, Lkuv;

    const v10, 0x7f08026d

    if-eqz v9, :cond_40

    check-cast v0, Lkuv;

    iget-object v7, v0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v7}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    iget-object v7, v0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v7, v7

    const v9, 0x7f08026c

    if-lez v7, :cond_3e

    iget-object v0, v0, Lkuv;->a:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_d

    :cond_3e
    const v10, 0x7f08026c

    goto :goto_d

    :cond_3f
    :goto_d
    iget-object v0, v5, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_11

    :cond_40
    iget-object v9, v7, Lkuk;->j:Lmqp;

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_41

    iget-object v9, v7, Lkuk;->j:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkwn;

    sget-object v11, Lkwn;->e:Lkwn;

    invoke-virtual {v9, v11}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    iget-object v0, v5, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto/16 :goto_11

    :cond_41
    iget-object v7, v7, Lkuk;->a:Lkuu;

    invoke-virtual {v7}, Lkuu;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_4

    :pswitch_14
    const/4 v7, -0x1

    goto :goto_e

    :pswitch_15
    const v7, 0x7f0803a4

    goto :goto_e

    :pswitch_16
    const v7, 0x7f0803cc

    goto :goto_e

    :pswitch_17
    const v7, 0x7f0803b8

    goto :goto_e

    :pswitch_18
    const v7, 0x7f0803b0

    goto :goto_e

    :pswitch_19
    const v7, 0x7f0803ad

    goto :goto_e

    :pswitch_1a
    const v7, 0x7f0803c7

    :goto_e
    if-ltz v7, :cond_42

    instance-of v9, v0, Lkuq;

    if-nez v9, :cond_42

    iget-object v0, v5, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_11

    :cond_42
    instance-of v7, v0, Lkuq;

    if-eqz v7, :cond_46

    iget-object v7, v5, Llpu;->b:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    check-cast v0, Lkuq;

    invoke-interface {v0}, Lkuq;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_43

    goto :goto_f

    :cond_43
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_44
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v11, v12}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    :try_start_4
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10

    :cond_45
    :goto_f
    iget-object v0, v5, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v5, 0x7f0803c0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_10
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    :cond_46
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_11
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, v2, Lddn;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_12

    :cond_47
    iget-object v0, v1, Ldeg;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f080318

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lddn;->c:Landroid/graphics/drawable/Drawable;

    :goto_12
    move-wide/from16 v9, p2

    invoke-virtual {v2, v9, v10}, Lddn;->f(J)V

    iput v6, v2, Lddn;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lddn;->g(J)V

    invoke-virtual/range {p1 .. p1}, Lluc;->A()Lmqp;

    move-result-object v0

    iget-object v5, v1, Ldeg;->k:Loxq;

    iget v6, v1, Ldeg;->h:I

    iget v7, v1, Ldeg;->i:I

    invoke-static {v0, v5, v6, v7}, Ldez;->f(Lmqp;Loxq;II)Lddl;

    move-result-object v0

    invoke-virtual {v2, v0}, Lddn;->d(Lddl;)V

    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    invoke-virtual {v2, v0}, Lddn;->b(I)V

    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->valueFormat:I

    invoke-virtual {v2, v0}, Lddn;->c(I)V

    invoke-virtual/range {p1 .. p1}, Lluc;->d()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/barhopper/Barcode;

    iget v0, v0, Lcom/google/android/libraries/barhopper/Barcode;->format:I

    const/16 v4, 0x100

    if-ne v0, v4, :cond_48

    const/4 v10, 0x1

    goto :goto_13

    :cond_48
    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v2, v10}, Lddn;->e(Z)V

    :cond_49
    invoke-virtual {v2}, Lddn;->a()Lddo;

    move-result-object v0

    return-object v0

    :cond_4a
    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v3, Lkui;->a:Ljava/lang/Object;

    if-nez v2, :cond_4b

    const-string v2, " actionType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    iget-object v2, v3, Lkui;->b:Ljava/lang/Object;

    if-nez v2, :cond_4c

    const-string v2, " engineType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    iget-object v2, v3, Lkui;->c:Ljava/lang/Object;

    if-nez v2, :cond_4d

    const-string v2, " actionText"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Lluc;->a()Lltv;

    move-result-object v2

    iget v2, v2, Lltv;->I:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported ResultType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :goto_15
    throw v0

    :goto_16
    goto :goto_15

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_1
        0x1a -> :sswitch_0
        0x1d -> :sswitch_1
        0x20 -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_14
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
