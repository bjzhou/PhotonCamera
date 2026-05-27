.class public Landroid/preference/LibraryPreference$NearDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/LibraryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/LibraryPreference$CallBack;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v1, p9

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/agc/Res$layout;->agc_library_preference_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "et_library_title"

    invoke-static {v3}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v5, "et_library_address"

    invoke-static {v5}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const-string v6, "et_library_value"

    invoke-static {v6}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const-string v7, "et_library_address_value"

    invoke-static {v7}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "et_library_extract_value"

    invoke-static {v8}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v9, p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object v9, p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v9, p5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object v9, p4

    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v10, p7

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Landroid/preference/LibraryPreference;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p6 .. p6}, Landroid/preference/LibraryPreference;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/preference/LibraryPreference$NearDialog$1;

    invoke-direct {v9, v7}, Landroid/preference/LibraryPreference$NearDialog$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v7, Landroid/preference/LibraryPreference$NearDialog$2;

    invoke-direct {v7, v8}, Landroid/preference/LibraryPreference$NearDialog$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v8, p1

    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v7, Landroid/preference/LibraryPreference$NearDialog$3;

    invoke-direct {v7, v1, v3, v5, v6}, Landroid/preference/LibraryPreference$NearDialog$3;-><init>(Landroid/preference/LibraryPreference$CallBack;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const-string v5, "OK"

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v5, "Cancel"

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p8, :cond_0

    new-instance v4, Landroid/preference/LibraryPreference$NearDialog$4;

    invoke-direct {v4, v1}, Landroid/preference/LibraryPreference$NearDialog$4;-><init>(Landroid/preference/LibraryPreference$CallBack;)V

    const-string v1, "Delete"

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v5, v2

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    double-to-int v2, v5

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/preference/LibraryPreference$NearDialog$5;

    invoke-direct {v1, v3, p0}, Landroid/preference/LibraryPreference$NearDialog$5;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method
