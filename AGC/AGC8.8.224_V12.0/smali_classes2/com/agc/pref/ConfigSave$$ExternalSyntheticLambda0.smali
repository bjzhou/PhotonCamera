.class public final synthetic Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/agc/pref/ConfigSave;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/pref/ConfigSave;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$0:Lcom/agc/pref/ConfigSave;

    iput-object p2, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$0:Lcom/agc/pref/ConfigSave;

    iget-object v1, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/agc/pref/ConfigSave$$ExternalSyntheticLambda0;->f$2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/agc/pref/ConfigSave;->lambda$onPreferenceClick$0$com-agc-pref-ConfigSave(Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method
